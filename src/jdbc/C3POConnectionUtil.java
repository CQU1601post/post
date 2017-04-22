package jdbc;

import java.sql.Connection;
import java.sql.SQLException;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class C3POConnectionUtil {
    private static ComboPooledDataSource comboPooledDataSource = null;
    //静态代码块
    static{
        /*
         * 读取c3p0的xml配置文件创建数据源，c3p0的xml配置文件c3p0-config.xml必须放在src目录下
         * 使用c3p0的命名配置读取数据源
         */
        comboPooledDataSource = new ComboPooledDataSource("c3p0");
    }
    //从数据源中获取数据库的连接
    public static Connection getConnection() throws SQLException {
        
            return comboPooledDataSource.getConnection();
    }
//    public static void main(String[] args){
//        for(int i=0;i<500;i++){
//            try {
//                System.out.println(i+"   "+C3POConnectionUtil.getConnection() );
//            } catch (SQLException e) {
//                // TODO Auto-generated catch block
//                e.printStackTrace();
//            }
//        }
//    }

}
