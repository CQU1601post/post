package listen;

import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import jdbc.ConnectDB;
import jdbc.OperationData;
import logicalConduct.AdminLogic;

import allClasses.Ad;
import allClasses.Cost;
import allClasses.Pic;

public class TaskManager implements ServletContextListener{

    /**
     * 每隔一个小时执行一次
     */
    public static final long PERIOD_DELETE = 1000*3600;
    
    private Timer timer;
    
    @Override
    public void contextDestroyed(ServletContextEvent arg0) {
      timer.cancel();
        
    }

    @Override
    public void contextInitialized(ServletContextEvent arg0) {
        
       timer=new Timer();
      final String path=arg0.getServletContext().getRealPath("/");
      final OperationData operationData=new OperationData();
       timer.schedule(new TimerTask() {
        @Override
        public void run() {
            System.out.println("扫描了");
            List<Cost> costs=operationData.getCosts();
           ConnectDB connectDB=new ConnectDB();
           AdminLogic data=new AdminLogic();
           List<Ad> lists=new ArrayList<Ad>();
           List<Integer> adList=new ArrayList<Integer>();
            for (int i = 0; i < costs.size(); i++) {
                Timestamp timestamp=new Timestamp(System.currentTimeMillis()-costs.get(i).getTime()*3600000);
               
                String  sql = "select * from ad where money='"+costs.get(i).getGrade()+"' and paymentTime<'"+timestamp+"'";
                ResultSet result=connectDB.executeQuery(sql);
                try {
                    while(result.next()){
                        Ad ad = new Ad(result.getInt(1), result.getInt(2),
                                result.getString(3), result.getInt(4),
                                result.getInt(5), result.getString(6),
                                result.getInt(7), result.getLong(8), result.getInt(9),
                                result.getString(10), result.getInt(11),
                                result.getInt(12), result.getInt(13),
                                result.getInt(14), result.getInt(15),result.getTimestamp(16));
                        adList.add(result.getInt(1));
                        lists.add(ad);
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            for (int i = 0; i <lists.size(); i++) {
                Ad ad2=lists.get(i);
               
                data.deleteLogManager(ad2.getAdId());//删除记录
                String filePath = (path + ad2.getFirstPicAddr()).replace("/", "\\");
                data.deleteFile(filePath);// 删除文件
                List<Pic> pics = data.getPicByAdId(ad2.getAdId());
                for (int j = 0; j < pics.size(); j++) {
                    String picFilePath = (path + pics.get(j).getPicAddr())
                            .replace("/", "\\");
                    File file = new File(picFilePath);
                    if (file.exists()) {
                        file.delete();
                    }
                }
            }
          String  sql = "delete from pic where adId=?";
            boolean flag =connectDB.executeBatch(sql,
                    data.listTransformationInt(adList));
            sql = "delete from ad where adId=?";
            flag = connectDB.executeBatch(sql, data.listTransformationInt(adList));
            connectDB.close();
        }
    }, new Date(),PERIOD_DELETE);
        
    }

}
