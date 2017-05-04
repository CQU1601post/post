package logicalConduct;

import java.io.File;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import sun.print.resources.serviceui;
import tool.ChangeResultSetToArray;

import allClasses.Ad;
import allClasses.AdType;
import allClasses.Administrator;
import allClasses.BrowserControl;
import allClasses.Pic;
import allClasses.Post;
import allClasses.TypeGroup;
import allClasses.Unit;
import allClasses.UnitType;
import allClasses.User;
import allClasses.VisitorLog;

import jdbc.ConnectDB;
import jdbc.SearchAboutPost;

public class AdminLogic {
    private ConnectDB connection = null;
    private List list = null;
    String sql = "";
    String sqlSelectadId = "select adId from ad where userId=?";

    // private SearchAboutPost searchFromDB=new SearchAboutPost();
    // 返回所有管理员信息

    public boolean judgeExistAdmin(String name, String password) {
        // int adPassword=Integer.parseInt(password);
        // sql="select * from administrator where administratorName='"+name+"'and password='"+password+"'";
        sql = "select * from administrator where administratorName=? and password=?";
        connection = new ConnectDB();

        ResultSet rs = connection.executeQuery(sql, name, password);
        try {
            if (rs.next()) {
                connection.close();
                return true;
            } else {
                connection.close();
                return false;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            if (connection != null) {
                connection.close();
            }
        }
        return false;
    }

    public Administrator getAdmin(String name, String password) {
        // int adPassword=Integer.parseInt(password);
        sql = "select * from administrator where administratorName='" + name
                + "'and password='" + password + "'";
        connection = new ConnectDB();
        Administrator a = new Administrator();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                a.setAdministratorName(rs.getString("administratorName"));
                a.setPassword(rs.getString("password"));
                a.setLevel(rs.getInt("level"));
                a.setScope(rs.getString("scope"));
            }

        } catch (SQLException e) {

            e.printStackTrace();
        } finally {
            connection.close();
        }
        return a;
    }

    public Administrator getAdmin(int id) {
        // int adPassword=Integer.parseInt(password);
        sql = "select * from administrator where id='" + id + "'";
        connection = new ConnectDB();
        Administrator a = new Administrator();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                a.setAdministratorName(rs.getString("administratorName"));
                a.setPassword(rs.getString("password"));
                a.setLevel(rs.getInt("level"));
                a.setScope(rs.getString("scope"));
                a.setEmail(rs.getString("email"));
                a.setVerification(rs.getString("verification"));
                a.setVerificationDate(rs.getTimestamp("verificationDate"));
            }

        } catch (SQLException e) {

            e.printStackTrace();
        } finally {
            connection.close();
        }
        return a;
    }

    public Administrator getAdminByName(String name) {
        // int adPassword=Integer.parseInt(password);
        sql = "select * from administrator where administratorName=?";
        connection = new ConnectDB();
        Administrator a = new Administrator();
        ResultSet rs = connection.executeQuery(sql, name);
        try {
            while (rs.next()) {
                a.setId(rs.getInt("id"));
                a.setAdministratorName(rs.getString("administratorName"));
                a.setPassword(rs.getString("password"));
                a.setLevel(rs.getInt("level"));
                a.setScope(rs.getString("scope"));
                a.setEmail(rs.getString("email"));
                a.setVerification(rs.getString("verification"));
                a.setVerificationDate(rs.getTimestamp("verificationDate"));
                a.setEmailIsActive(rs.getInt("emailIsActive"));
            }

        } catch (SQLException e) {

            e.printStackTrace();
        } finally {
            connection.close();
        }
        return a;
    }

    public List<Administrator> getAllAdmin() {
        sql = "select * from administrator ";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        List<Administrator> administrators = new ArrayList<Administrator>();
        try {
            while (rs.next()) {
                Administrator administrator = new Administrator();
                administrator.setId(rs.getInt("id"));
                administrator.setAdministratorName(rs
                        .getString("administratorName"));
                administrator.setLevel(rs.getInt("level"));
                administrator.setPassword(rs.getString("password"));
                administrator.setScope(rs.getString("scope"));
                administrators.add(administrator);
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        } finally {
            connection.close();
        }

        return administrators;
    }

    // public void insertAdminManager(String email,String verification,int
    // id,Timestamp verificationDate){
    // sql="insert into administrator (email,verification,verificationDate) values ('"+email+"','"+verification+"','"+verificationDate+"') where id='"+id+"'";
    // connection=new ConnectDB();
    // boolean flag=connection.executeUpdate(sql);
    // connection.close();
    // }
    //
    public void insertAdminManager(String name, String password, int level,
            String scope) {
        sql = "insert into administrator (administratorName,password,level,scope) values('"
                + name
                + "','"
                + password
                + "','"
                + +level
                + "','"
                + scope
                + "')";
        connection = new ConnectDB();
        boolean flag = connection.executeUpdate(sql);
        connection.close();
    }

    public boolean selectAdminManager(String name) {
        boolean flag = true;
        sql = "select * from administrator   where administratorName='" + name
                + "'";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            if (rs.next()) {
                flag = false;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        connection.close();
        return flag;
    }

    public Administrator selectAdminManager(int id) {
        boolean flag = true;
        sql = "select * from administrator   where id='" + id + "'";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        Administrator administrator = new Administrator();
        try {
            if (rs.next()) {
                administrator = new Administrator(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getInt(4),
                        rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getTimestamp(8), rs.getInt(9));
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        connection.close();
        return administrator;
    }

    public void deleteAdminManager(int id) {
        sql = "delete from administrator where id='" + id + "'";
        connection = new ConnectDB();
        boolean flag = connection.executeUpdate(sql);
        System.out.println(flag);
        connection.close();
    }

    public void updateAdminManager(String name, String password, int level,
            String scope, int updateModelID) {
        sql = "update administrator set administratorName='" + name
                + "',password='" + password + "',level='" + level + "',scope='"
                + scope + "'where id='" + updateModelID + "'";
        connection = new ConnectDB();
        boolean flag = connection.executeUpdate(sql);
        System.out.println(flag);
        connection.close();
    }

    public void updateAdminManager(String name, String password,
            int updateModelID, int emailISActive) {
        sql = "update administrator set administratorName='" + name
                + "',password='" + password + "',emailIsActive='"
                + emailISActive + "'where id='" + updateModelID + "'";
        connection = new ConnectDB();
        boolean flag = connection.executeUpdate(sql);
        System.out.println(flag);
        connection.close();
    }

    public void updateAdminManager(String name, String password, int level,
            String scope, int updateModelID, int emailISActive) {
        sql = "update administrator set administratorName='" + name
                + "',emailIsActive='" + emailISActive + "',password='"
                + password + "',level='" + level + "',scope='" + scope
                + "'where id='" + updateModelID + "'";
        connection = new ConnectDB();
        boolean flag = connection.executeUpdate(sql);
        System.out.println(flag);
        connection.close();
    }

    public void updateAdminManager(String email, String verification,
            Timestamp verificationDate, int emailISActive, int updateModelID) {
        sql = "update administrator set email='" + email + "',verification='"
                + verification + "',verificationDate='" + verificationDate
                + "',emailISActive='" + emailISActive + "'where id='"
                + updateModelID + "'";
        System.out.println(sql);
        connection = new ConnectDB();
        boolean flag = connection.executeUpdate(sql);
        System.out.println(flag);
        connection.close();
    }

    public void updateAdminManager(String scope) {
        sql = "update administrator set scope='" + scope + "'where id=1";

        connection = new ConnectDB();
        boolean flag = connection.executeUpdate(sql);
        System.out.println(flag);
        connection.close();
    }

    // 返回所有未通过审核的图片的信息
    public List getAuditInfo(int checked) {
        List list = new ArrayList();
        Pic p;
        sql = "select *from pic where pic.adId in(select ad.adId from ad where exist=1 ) and checked='"
                + checked + "'";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                p = new Pic();
                p.setPicId(rs.getInt("picId"));
                p.setAdId(rs.getInt("adId"));
                p.setHeight(rs.getInt("height"));
                p.setWidth(rs.getInt("width"));
                // p.setPicName(rs.getString("picName"));
                p.setPicAddr(rs.getString("picAddr"));
                p.setChecked(rs.getInt("checked"));
                // p.setState(rs.getInt("checked"));
                list.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return list;
    }

    // 返回所有未通过审核的图片的信息 且没有管理员在审核
    public List getAuditInfo(int checked, int auditMark) {
        List list = new ArrayList();
        Pic p;
        sql = "select *from pic where pic.adId in(select ad.adId from ad where exist=1 and ad.auditMark='"
                + auditMark + "') and checked='" + checked + "'";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                p = new Pic();
                p.setPicId(rs.getInt("picId"));
                p.setAdId(rs.getInt("adId"));
                p.setHeight(rs.getInt("height"));
                p.setWidth(rs.getInt("width"));
                // p.setPicName(rs.getString("picName"));
                p.setPicAddr(rs.getString("picAddr"));
                p.setChecked(rs.getInt("checked"));
                // p.setState(rs.getInt("checked"));
                list.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return list;
    }

    // 查询未审核或者已审核的广告数
    public int selectAuditOrNoAuditNum(int checked) {
        sql = "select count(*) from ad where  exist=1 and checked='" + checked
                + "'";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        int num = 0;
        try {
            while (rs.next()) {
                num = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return num;
    }

    public int selectAuditOrNoAuditNum(int checked, int postId) {
        sql = "select count(*) from ad where  exist=1 and checked='" + checked
                + "'+postId='" + postId + "'";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        int num = 0;
        try {
            while (rs.next()) {
                num = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return num;
    }

    public int getRandAd(int checked, int auditMark) {
        int adId = 0;
        sql = "SELECT * FROM  ad AS t1 JOIN (SELECT ROUND(RAND() * ((SELECT MAX(adId) FROM ad)-"
                + "(SELECT MIN(adId) FROM ad))+(SELECT MIN(adId) FROM ad)) AS adId) AS t2 WHERE t1.adId >= t2.adId and checked='"
                + checked
                + "' and auditMark='"
                + auditMark
                + "' ORDER BY t1.adId LIMIT 1";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                adId = rs.getInt("adId");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return adId;
    }

    public void setAdAuditMark(int adId) {
        connection = new ConnectDB();
        sql = "update ad set auditMark=1 where adId='" + adId + "'";
        boolean flag = connection.executeUpdate(sql);
        System.out.println("setAdAuditMark" + flag);
        connection.close();
    }

    public void setAdAuditMark1(List<Integer> temp) {
        connection = new ConnectDB();
        for (Iterator iterator = temp.iterator(); iterator.hasNext();) {
            int integer = (Integer) iterator.next();
            sql = "update ad set auditMark=1 where adId='" + integer + "'";
            boolean flag = connection.executeUpdate(sql);
            sql = "select adId from ad  where auditMark=1 and adId='" + integer
                    + "'";
            ResultSet rsResultSet = connection.executeQuery(sql);
            try {
                while (rsResultSet.next()) {
                    System.out.println(rsResultSet.getInt(1));
                }
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            System.out.println("setAdAuditMark1" + flag);
        }

        connection.close();
    }

    public void recoveryAdAuditMark(int adId) {
        connection = new ConnectDB();
        sql = "update ad set auditMark=0 where adId='" + adId + "'";
        boolean flag = connection.executeUpdate(sql);
        System.out.println("recoveryAdAuditMark" + flag);
        connection.close();
    }

    public List<Pic> getAuditByAdId(List<Integer> adIdList) {
        List<Pic> list = new ArrayList<Pic>();
        Pic p;
        connection = new ConnectDB();
        ResultSet rs = null;
        for (Iterator iterator = adIdList.iterator(); iterator.hasNext();) {
            int adId = (Integer) iterator.next();
            sql = "select *from pic where adId ='" + adId + "'";
            rs = connection.executeQuery(sql);
            try {
                while (rs.next()) {
                    p = new Pic();
                    p.setPicId(rs.getInt("picId"));
                    p.setAdId(rs.getInt("adId"));
                    p.setHeight(rs.getInt("height"));
                    p.setWidth(rs.getInt("width"));
                    // p.setPicName(rs.getString("picName"));
                    p.setPicAddr(rs.getString("picAddr"));
                    p.setChecked(rs.getInt("checked"));
                    // p.setState(rs.getInt("checked"));
                    list.add(p);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        connection.close();
        return list;
    }

    public Ad getAdByAdId(int adId) {
        ConnectDB connectDB = new ConnectDB();
        sql = "select * from ad where adId='" + adId + "'";
        ResultSet result = connectDB.executeQuery(sql);

        Ad ad = new Ad();
        try {
            while (result.next()) {
                ad = new Ad(result.getInt(1), result.getInt(2),
                        result.getString(3), result.getInt(4),
                        result.getInt(5), result.getString(6),
                        result.getInt(7), result.getLong(8), result.getInt(9),
                        result.getString(10), result.getInt(11),
                        result.getInt(12), result.getInt(13),
                        result.getInt(14), result.getInt(15));// 通过审核的广告checked属性必为1
                // System.out.println(ad.getAdId());

            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        connectDB.close();
        return ad;
    }

    public List<Pic> getPicByAdId(int adId) {
        ConnectDB connection1 = new ConnectDB();
        sql = "select * from pic where adId='" + adId + "'";
        ResultSet rs = connection1.executeQuery(sql);
        List<Pic> pics = new ArrayList<Pic>();

        try {
            if (rs == null) {
                System.out.println("rs为空");
            }
            while (rs.next()) {
                Pic p = new Pic();
                p.setAdId(rs.getInt("adId"));
                p.setPicAddr(rs.getString("picAddr"));
                p.setWidth(rs.getInt("width"));
                p.setHeight(rs.getInt("height"));
                p.setPicId(rs.getInt("picId"));
                p.setChecked(rs.getInt("checked"));
                pics.add(p);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection1.close();
        }
        return pics;
    }

    // 将特定ID的图片状态改为通过
    public boolean changeState_pic(int adId) {
        connection = new ConnectDB();
        sql = "update pic set checked='" + 1 + "' where adId='" + adId + "'";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        return flag;
    }

    // 批量将特定ID的图片状态改为通过
    public boolean BatchchangeState_pic(List<Integer> List) {
        connection = new ConnectDB();
        sql = "update pic set checked='" + 1 + "' where adId=?";
        boolean flag = connection
                .executeBatch(sql, listTransformationInt(List));
        for (Iterator iterator = List.iterator(); iterator.hasNext();) {
            int integer = (Integer) iterator.next();
            recoveryAdAuditMark(integer);
        }
        System.out.println(flag);
        connection.close();
        return flag;
    }

    // 将特定ID的广告状态改为通过
    public boolean changeState_ad(int adId) {
        connection = new ConnectDB();
        sql = "update ad set checked='" + 1 + "' where adId='" + adId + "'";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        return flag;
    }

    // 批量将特定ID的广告状态改为通过
    public boolean BatchchangeState_ad(List<Integer> List) {
        connection = new ConnectDB();
        sql = "update ad set checked='" + 1 + "' where adId=?";
        boolean flag = connection
                .executeBatch(sql, listTransformationInt(List));
        System.out.println(flag);
        connection.close();
        return flag;
    }

    // 将所有图片的状态改为1
    public boolean changeAllState_pic() {
        connection = new ConnectDB();
        sql = "update pic set checked='" + 1 + "' ";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        return flag;
    }

    // 将所有广告状态改为1
    public boolean changeAllState_ad() {
        connection = new ConnectDB();
        sql = "update ad set checked='" + 1 + "' ";
        boolean flag = connection.executeUpdate(sql);

        connection.close();
        return flag;
    }

    // 删除某个id广告下所有的图片
    public boolean del_pic_ad(int adId, String path, String compressPath) {
        ConnectDB connection1 = new ConnectDB();
        Ad ad = getAdByAdId(adId);
        String filePath = (path + ad.getFirstPicAddr()).replace("/", "\\");
        System.out.println(filePath);
        deleteLogManager(ad.getAdId());
        deleteFile(filePath);// 删除文件
        List<Pic> pics = getPicByAdId(adId);
        for (int i = 0; i < pics.size(); i++) {
            String picFilePath = (compressPath + pics.get(i).getPicAddr())
                    .replace("/", "\\");
            File file = new File(picFilePath);
            if (file.exists()) {
                file.delete();
            }
        }
        sql = "delete from pic where adId='" + adId + "'";
        boolean flag = connection1.executeUpdate(sql);

        sql = "delete from ad where adId='" + adId + "'";
        flag = connection1.executeUpdate(sql);
        connection1.close();
        return flag;
    }

    // 通过改变ad的状态，来代表删除
    public void newDel_pic_ad(int adId) {
        connection = new ConnectDB();
        sql = "update ad set exist=0 where adId=" + adId;
        connection.executeUpdate(sql);
        connection.close();
    }

    public void delBatch_pic_ad(List<Integer> AdList, String path,
            String compressPath) {

        connection = new ConnectDB();
        for (int i = 0; i < AdList.size(); i++) {
            Ad ad = getAdByAdId(AdList.get(i));
            String filePath = (path + ad.getFirstPicAddr()).replace("/", "\\");
            System.out.println(filePath);
            deleteLogManager(ad.getAdId());
            deleteFile(filePath);// 删除文件
            List<Pic> pics = getPicByAdId(AdList.get(i));
            for (int j = 0; j < pics.size(); j++) {
                String picFilePath = (compressPath + pics.get(j).getPicAddr())
                        .replace("/", "\\");
                File file = new File(picFilePath);
                if (file.exists()) {
                    file.delete();
                }
            }
        }

        sql = "delete from pic where adId=?";
        boolean flag = connection.executeBatch(sql,
                listTransformationInt(AdList));
        sql = "delete from ad where adId=?";
        flag = connection.executeBatch(sql, listTransformationInt(AdList));
        connection.close();
    }

    public void delBatch_pic_ad(List<Integer> AdList) {

        connection = new ConnectDB();
        sql = "delete from pic where adId=?";
        boolean flag = connection.executeBatch(sql,
                listTransformationInt(AdList));
        sql = "delete from ad where adId=?";
        flag = connection.executeBatch(sql, listTransformationInt(AdList));
        connection.close();
    }

    public void deletePicFile(List<Integer> AdList, String path) {
        ConnectDB connectDB = new ConnectDB();
        sql = "select * from pic where adId=?";
        int[] ads = new int[AdList.size()];
        List<Pic> pics = new ArrayList<Pic>();
        for (int i = 0; i < AdList.size(); i++) {
            ads[i] = AdList.get(i);
        }
        pics = connectDB.executeQueryBatchPic(sql, ads);

        for (int i = 0; i < pics.size(); i++) {
            String pathname = (path + pics.get(i).getPicAddr()).replace("/",
                    "\\");
            System.out.println(pathname);
            File file = new File(pathname);
            if (file.exists()) {
                file.delete();
            }
        }

    }

    public void newDelBatch_pic_ad(List<Integer> AdList) {
        connection = new ConnectDB();
        sql = "update ad set exist=0 where adId=?";
        boolean flag = connection.executeBatch(sql,
                listTransformationInt(AdList));
        connection.close();
    }

    // 看用户名是否在在数据库中存在，存在返回false,不存在返回true
    public boolean isRepeat(String userName) {

        sql = "select *from user  where userName = '" + userName + "'";
        connection = new ConnectDB();
        // System.out.println(sql);
        ResultSet rs = connection.executeQuery(sql);
        System.out.println(rs);
        try {
            if (rs.next()) {
                System.out.println(sql);
                return false;

            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return true;
    }

    // 注册用户
    public boolean register_user(User user) {
        sql = "insert into user_info values('" + user.getUserId() + "','"
                + user.getUserName() + "','" + user.getPassword() + "','"
                + user.getUserType() + "" + "','" + user.getEmail() + "','"
                + user.getPhone() + "')";
        connection = new ConnectDB();
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        if (flag == true) {
            System.out.println("注册成功!");
        }
        return flag;
    }

    // 更新用户
    public boolean updateUser(int userId, String userName, String userPasswd,
            String email, String phone) {
        connection = new ConnectDB();
        System.out.println("执行updateUser，userName=" + userName + "userPasswd"
                + userPasswd + "email" + email + "phone" + phone);
        sql = "update user set  userName='" + userName + "' ,password='"
                + userPasswd + "' ,email='" + email + "' ,phone='" + phone
                + "' where userId='" + userId + "'";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        System.out.println("执行updateUser，flag=" + flag);
        return flag;
    }

    public boolean updateUser(int userId, String email,
            String verificationCode, Timestamp timestamp) {
        connection = new ConnectDB();
        sql = "update user set  email='" + email + "' ,verificationCode='"
                + verificationCode + "' ,verificationDate='" + timestamp
                + "' where userId='" + userId + "'";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        System.out.println("执行updateUser verificationDate，flag=" + flag);
        return flag;
    }

    // 更改用户等级
    public boolean changeUser(int userId, String password, String email,
            String level) {
        connection = new ConnectDB();
        sql = "update user set  userType='" + level + "',password='" + password
                + "',email='" + email + "'  where userId='" + userId + "'";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        System.out.println("执行changeUser，flag=" + flag);
        return flag;
    }

    // 获取所有用户信息
    public List getUser() {
        List list = new ArrayList();
        User user;
        sql = "select *from user ";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        System.out.println("rs=" + rs);
        try {
            while (rs.next()) {
                user = new User();
                user.setUserId(rs.getInt("userId"));
                user.setUserName(rs.getString("userName"));
                user.setPassword(rs.getString("password"));
                // user.setUserPasswd(rs.getString("userPasswd"));
                user.setUserType(rs.getInt("userType"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                list.add(user);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }

        return list;
    }

    // 获取所有用户姓名,用-连接
    public String userName() {
        String userName = null, name = null;
        User user;
        sql = "select * from user ";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);

        try {

            while (rs.next()) {

                name = rs.getString("userName");
                if (userName == null) {
                    userName = name;
                } else {
                    userName = userName + "-" + name;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        finally {
            connection.close();
        }

        return userName;
    }

    // 删除用户
    public boolean del_user(int userId) {
        connection = new ConnectDB();
        sql = "delete from user where userId='" + userId + "'";

        boolean flag = connection.executeUpdate(sql);

        connection.close();
        return flag;
    }

    public List<Integer> selectAdID(String sql, List<Integer> IDList) {
        List<ResultSet> resultSets = new ArrayList<ResultSet>();
        List<Integer> IDLists = new ArrayList<Integer>();
        connection = new ConnectDB();
        resultSets = connection.executeQueryBatch(sql,
                listTransformationInt(IDList));
        if (resultSets.size() != 0) {
            for (Iterator iterator = resultSets.iterator(); iterator.hasNext();) {
                ResultSet resultSet = (ResultSet) iterator.next();
                try {
                    while (resultSet.next()) {
                        IDLists.add(resultSet.getInt("adId"));
                    }
                } catch (SQLException e1) {

                    e1.printStackTrace();
                } finally {
                    connection.close();
                }
            }
        }

        return IDLists;
    }

    // 通过用户ID 查找adId
    public List<Integer> selectAdID(int userId) {
        ResultSet resultSet = null;
        List<Integer> IDLists = new ArrayList<Integer>();
        connection = new ConnectDB();
        sql = "select adId from ad where userId='" + userId + "'";
        resultSet = connection.executeQuery(sql);
        try {
            while (resultSet.next()) {
                IDLists.add(resultSet.getInt("adId"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        finally {
            connection.close();
        }
        return IDLists;
    }

    // 批量删除用户
    public boolean delBatch_user(List<Integer> userIDList) {
        ConnectDB connection1 = new ConnectDB();
        int[] param = new int[userIDList.size()];
        List<String> strings = new ArrayList<String>();
        int i = 0;
        for (Iterator iterator = userIDList.iterator(); iterator.hasNext();) {
            Integer integer = (Integer) iterator.next();
            param[i] = integer;
            i++;

        }
        sql = "delete from user where userId=?";// 删除用户之前需要删除ad、pic、privatead、privatepic。
        String sqlDeleteFather = "delete from ad where userId=?";
        String sqlSelectFather = "select adId from ad where userId=?";
        String sqlDeleteSon = "delete from pic where adId=?";
        connection1.executeBatch(sqlDeleteSon,
                listTransformationInt(selectAdID(sqlSelectFather, userIDList)));// 删除pic中与这个用户相关联的pic，可以使用批量删除广告
        connection1.executeBatch(sqlDeleteFather,
                listTransformationInt(userIDList));// 删除ad中与这个用户相关联的ad
        sqlDeleteFather = "delete from privatead where userId=?";
        sqlSelectFather = "select adId from privatead where userId=?";
        sqlDeleteSon = "delete from privatepic where adId=?";
        connection1.executeBatch(sqlDeleteSon,
                listTransformationInt(selectAdID(sqlSelectFather, userIDList)));// 删除pic中与这个用户相关联的privatepic
        connection1.executeBatch(sqlDeleteFather,
                listTransformationInt(userIDList));// 删除ad中与这个用户相关联的privatead
        sqlDeleteSon = "delete from attention where userId=?";
        connection1.executeBatch(sqlDeleteSon,
                listTransformationInt(userIDList));
        boolean flag = connection1.executeBatch(sql, param);// 此地用的param可以用listTransformationInt(userIDList)获得，是一样的
        System.out.println(flag);
        connection1.close();
        return flag;
    }

    public void delBatch_ad(String sql, List<Integer> adList) {
        connection = new ConnectDB();

        String sqlDeleteSon = "delete from pic where adId=?";
        connection.executeBatch(sqlDeleteSon, listTransformationInt(adList));// 删除pic中与这个用户相关联的pic
        connection.executeBatch(sql, listTransformationInt(adList));// 删除ad中与这个用户相关联的ad
        connection.close();
    }

    // 把list 转化为数组。
    public int[] listTransformationInt(List<Integer> List) {
        int[] param = new int[List.size()];
        int i = 0;
        for (Iterator iterator = List.iterator(); iterator.hasNext();) {
            Integer integer = (Integer) iterator.next();
            param[i] = integer;
            i++;

        }
        return param;
    }

    // 返回当前最大的用户id
    public int maxUserId() {
        int max = 0;
        sql = "select max(userId) as userId from user";

        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                max = rs.getInt("userId");

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        System.out.println("执行maxUserId，当前最大的userId为：" + max);
        return max;
    }

    // 获取所有粘贴栏信息
    public List get_paste() {
        List list = new ArrayList();
        Post p;
        sql = "select *from post order by unitId ";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        System.out.println("rs=" + rs);
        try {
            while (rs.next()) {
                p = new Post();
                p.setPostId(rs.getInt("postId"));
                p.setPostName(rs.getString("postName"));
                p.setUnitId(rs.getInt("unitId"));
                p.setUserId(rs.getInt("userId"));
                p.setCreateTime(rs.getString("createtime"));
                p.setGroupId(rs.getInt("groupId"));
                list.add(p);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }

        return list;
    }

    // 根据单位类别获取所有粘贴栏信息
    public List get_paste(List<Unit> units) {
        List list = new ArrayList();
        Post p;
        connection = new ConnectDB();
        ResultSet rs = null;
        for (Iterator iterator = units.iterator(); iterator.hasNext();) {
            Unit unit = (Unit) iterator.next();
            int unitId = unit.getUnitId();
            sql = "select *from post where unitId='" + unitId + "'";
            rs = connection.executeQuery(sql);
            try {
                while (rs.next()) {
                    p = new Post();
                    p.setPostId(rs.getInt("postId"));
                    p.setPostName(rs.getString("postName"));
                    p.setUnitId(rs.getInt("unitId"));
                    p.setUserId(rs.getInt("userId"));
                    p.setCreateTime(rs.getString("createtime"));
                    p.setGroupId(rs.getInt("groupId"));
                    list.add(p);

                }

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        connection.close();
        return list;
    }

    public List<Integer> getPasteGroup() {
        List<Integer> list = new ArrayList<Integer>();
        ConnectDB connectDB = new ConnectDB();
        sql = "select DISTINCT groupId from adtype ";
        ResultSet resultSet = connectDB.executeQuery(sql);
        try {
            while (resultSet.next()) {
                list.add(resultSet.getInt("groupId"));
            }
        } catch (SQLException e) {

            e.printStackTrace();
        } finally {
            connectDB.close();
        }
        return list;
    }

    // 保存粘贴栏
    public boolean savePaste(Post p) {
        connection = new ConnectDB();
        sql = "insert into post(postId, unitId,userId,postName,createTime) values('"
                + p.getPostId()
                + "','"
                + p.getUnitId()
                + "','"
                + p.getUserId()
                + "','" + p.getPostName() + "','" + p.getCreateTime() + "')";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        return flag;
    }

    // 更新粘贴栏信息
    public boolean updatePaste(int id, String paste_name) {
        connection = new ConnectDB();
        sql = "update post set  postName='" + paste_name + "' where postId='"
                + id + "'";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        System.out.println("执行updatePaste，flag=" + flag);
        return flag;
    }

    public boolean updatePasteGroupId(int id, int groupid) {
        connection = new ConnectDB();
        sql = "update post set  groupId='" + groupid + "' where postId='" + id
                + "'";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        System.out.println("执行updatePasteGroupId，flag=" + flag);
        return flag;
    }

    // 返回当前最大的粘贴栏id
    public int maxPasteId() {
        int max = 0;
        sql = "select max(postId) as pasteId from post";

        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                max = rs.getInt("pasteId");// postId

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        System.out.println("执行maxPostId，当前最大的postId为：" + max);
        return max;
    }

    // 返回当前最大的单位id
    public int maxUnitId() {
        int max = 0;
        sql = "select max(unitId) as unitId from unit";

        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                max = rs.getInt("unitId");

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        System.out.println("执行maxUnitId，当前最大的unitId为：" + max);
        return max;
    }

    // 删除特定id粘贴栏信息
    public boolean delPaste(int pasteId, String path, String compressPath) {
        ConnectDB connection1 = new ConnectDB();
        boolean flag = false, adFlag = false;
        List<Integer> adIdList = new ArrayList<Integer>();
        sql = "select adId from ad where postId='" + pasteId + "'";
        ResultSet rs = connection1.executeQuery(sql);
        try {
            while (rs.next()) {
                adIdList.add(rs.getInt(1));
                flag = true;
            }
        } catch (SQLException e) {

            e.printStackTrace();
        }
        if (flag) {
            for (int i = 0; i < adIdList.size(); i++) {
                adFlag = del_pic_ad(adIdList.get(i), path, compressPath);
            }

        }
        if (flag) {
            if (adFlag) {
                sql = "delete from post where postId='" + pasteId + "'";
                flag = connection1.executeUpdate(sql);

            } else {
                flag = false;
            }
        } else {
            sql = "delete from post where postId='" + pasteId + "'";
            flag = connection1.executeUpdate(sql);

        }

        connection1.close();
        return flag;
    }

    // 获取所有单元信息
    public List get_unit() {
        List list = new ArrayList();
        Unit u;
        sql = "select * from unit order by unitId";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                u = new Unit();
                u.setUnitId(rs.getInt("unitId"));
                u.setUnitName(rs.getString("unitName"));
                u.setUnitTypeId(rs.getInt("unitTypeId"));
                // u.setPasteType(rs.getInt("pasteType"));
                list.add(u);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return list;
    }

    // 通过单位所属类别获取所有单元信息
    public List get_unit(List<UnitType> unitTypes) {
        List list = new ArrayList();
        Unit u;
        connection = new ConnectDB();
        ResultSet rs = null;
        for (Iterator iterator = unitTypes.iterator(); iterator.hasNext();) {
            UnitType unitType = (UnitType) iterator.next();
            int unitTypeId = unitType.getUnitTypeId();
            sql = "select * from unit where unitTypeId='" + unitTypeId + "'";
            rs = connection.executeQuery(sql);
            try {
                while (rs.next()) {
                    u = new Unit();
                    u.setUnitId(rs.getInt("unitId"));
                    u.setUnitName(rs.getString("unitName"));
                    u.setUnitTypeId(rs.getInt("unitTypeId"));
                    // u.setPasteType(rs.getInt("pasteType"));
                    list.add(u);

                }

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        connection.close();

        return list;
    }

    // 保存单元信息
    public boolean saveUnit(Unit u) {
        connection = new ConnectDB();
        sql = "insert into unit  values('" + u.getUnitId() + "','"
                + u.getUnitName() + "','" + u.getUnitTypeId() + "')";
        boolean flag = connection.executeUpdate(sql);

        connection.close();
        return flag;
    }

    // 更新单元信息
    public boolean updateUnit(Unit u) {
        connection = new ConnectDB();
        sql = "update unit set unitName='" + u.getUnitName()
                + "', unitTypeId='" + u.getUnitTypeId() + "' where unitId='"
                + u.getUnitId() + "'";
        boolean flag = connection.executeUpdate(sql);

        connection.close();
        return flag;
    }

    // 删除特定id单元信息
    public boolean delUnit(int unitId, String path, String compressPath) {
        ConnectDB connection1 = new ConnectDB();
        List<Integer> postIdList = new ArrayList<Integer>();
        boolean flag = false, postFlag = false;

        sql = "select * from post where unitId='" + unitId + "'";
        ResultSet rs = connection1.executeQuery(sql);
        try {
            while (rs.next()) {
                postIdList.add(rs.getInt(1));
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        if (flag) {
            for (int i = 0; i < postIdList.size(); i++) {
                postFlag = delPaste(postIdList.get(i), path, compressPath);
                if (!postFlag) {
                    break;
                }
            }

        }
        if (flag) {
            if (postFlag) {
                System.out.println(connection);
                sql = "delete from unit where unitId=?";
                flag = connection1.executeUpdate(sql, unitId);
            } else {
                flag = false;
            }
        } else {
            System.out.println(unitId + "124546");
            System.out.println(connection);
            sql = "delete from unit where unitId=?";
            flag = connection1.executeUpdate(sql, unitId);
        }

        connection1.close();
        return flag;
    }

    public int maxTypeGroupId() {
        int max = 0;
        sql = "select max(id) as id from typeGroup";

        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                max = rs.getInt(1);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        System.out.println("执行maxTypeGroupId，当前最大的typeGroupId为：" + max);
        return max;
    }

    // 获取所有组类别信息
    public List<TypeGroup> getTypeGroup() {
        sql = "select *  from typeGroup ";
        List<TypeGroup> list = new ArrayList<TypeGroup>();
        TypeGroup p;
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        System.out.println("rs=" + rs);
        try {
            while (rs.next()) {
                p = new TypeGroup();
                p.setId(rs.getInt(1));
                // p.setAdType(rs.getInt(1));
                p.setName(rs.getString(2));
                list.add(p);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return list;
    }

    // 通过掌火获取所有组类别信息
    public List<TypeGroup> getTypeGroup(List posts) {
        Set<Integer> set = new HashSet<Integer>();
        List<TypeGroup> list = new ArrayList<TypeGroup>();
        TypeGroup p;
        connection = new ConnectDB();
        ResultSet rs = null;
        for (Iterator iterator = posts.iterator(); iterator.hasNext();) {
            Post post = (Post) iterator.next();
            set.add(post.getGroupId());
        }
        for (Iterator iterator = set.iterator(); iterator.hasNext();) {
            Integer integer = (Integer) iterator.next();
            sql = "select *  from typeGroup where id='" + integer + "'";
            rs = connection.executeQuery(sql);
            try {
                while (rs.next()) {
                    p = new TypeGroup();
                    p.setId(rs.getInt(1));
                    // p.setAdType(rs.getInt(1));
                    p.setName(rs.getString(2));
                    list.add(p);

                }

            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        connection.close();
        return list;
    }

    public boolean saveTypeGroup(TypeGroup p) {
        connection = new ConnectDB();
        sql = "insert into typeGroup values('" + p.getId() + "','"
                + p.getName() + "')";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        return flag;
    }

    public boolean updateTypeGroup(int id, String typeGroupName) {
        connection = new ConnectDB();
        sql = "update typeGroup set GroupName='" + typeGroupName
                + "' where id='" + id + "'";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        System.out.println("执行updateTypeGroup，flag=" + flag);
        return flag;
    }

    // 删除组类别，并且删除组里面所有的成员，并且删除此类别下面的所有广告。
    public boolean delTypeGroup(int id) {

        connection = new ConnectDB();
        sql = "delete from adtype where groupId='" + id + "'";
        boolean flag = connection.executeUpdate(sql);
        if (flag) {
            sql = "delete from typeGroup where id='" + id + "'";
            flag = connection.executeUpdate(sql);
        }
        connection.close();
        return flag;
    }

    public List<Integer> getAdtypeById(int id) {
        List<Integer> list = new ArrayList<Integer>();

        sql = "select * from adtype where GroupId='" + id + "'";
        ;
        ConnectDB connection1 = new ConnectDB();

        ResultSet rs = connection1.executeQuery(sql);
        System.out.println("rs=" + rs);
        try {
            while (rs.next()) {
                list.add(rs.getInt(1));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection1.close();
        }

        return list;
    }

    // 获取所有广告类别信息
    public List get_type() {
        List list = new ArrayList();
        AdType p;
        sql = "select *from adtype  ";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        System.out.println("rs=" + rs);
        try {
            while (rs.next()) {
                p = new AdType();
                p.setAdTypeId(rs.getInt(1));
                // p.setAdType(rs.getInt(1));
                p.setAdTypeName(rs.getString(2));

                list.add(p);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }

        return list;
    }

    public List get_typeById(int GroupId) {
        List list = new ArrayList();
        AdType p;
        sql = "select *from adtype where GroupId='" + GroupId + "' ";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        System.out.println("rs=" + rs);
        try {
            while (rs.next()) {
                p = new AdType();
                p.setAdTypeId(rs.getInt(1));
                // p.setAdType(rs.getInt(1));
                p.setAdTypeName(rs.getString(2));

                list.add(p);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }

        return list;
    }

    // 保存广告类别
    public boolean saveType(AdType p) {
        connection = new ConnectDB();
        sql = "insert into adtype values('" + p.getAdTypeId() + "','"
                + p.getAdTypeName() + "','" + p.getGroupId() + "')";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        return flag;
    }

    // 更新广告类别信息
    public boolean updateType(int id, String typeName) {
        connection = new ConnectDB();
        sql = "update adtype set adTypeName='" + typeName
                + "' where adTypeId='" + id + "'";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        System.out.println("执行updateType，flag=" + flag);
        return flag;
    }

    // 返回当前最大的广告类别id
    public int maxTypeId() {
        int max = 0;
        sql = "select max(adTypeId) as adTypeId from adtype";

        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                max = rs.getInt(1);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        System.out.println("执行maxTypeId，当前最大的typeId为：" + max);
        return max;
    }

    public boolean delType(int id) {
        connection = new ConnectDB();
        sql = "delete from adtype where adTypeId='" + id + "'";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        return flag;
    }

    public List<Integer> getAdByAdTypeId(int id) {
        connection = new ConnectDB();
        List<Integer> list = new ArrayList<Integer>();
        sql = "select * from ad where adTypeId='" + id + "'";
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                list.add(rs.getInt(1));
            }
        } catch (SQLException e) {

            e.printStackTrace();
        } finally {
            connection.close();
        }
        return list;
    }

    // 获取所有单位类别信息
    public List get_pasteType() {
        List list = new ArrayList();
        UnitType p;
        sql = "select *from unittype  ";
        ConnectDB connection1 = new ConnectDB();
        ResultSet rs = connection1.executeQuery(sql);
        System.out.println("rs=" + rs);
        try {
            while (rs.next()) {
                p = new UnitType();
                p.setUnitTypeId(rs.getInt(1));
                // p.setPasteType(rs.getInt(1));
                // p.setTypeName(rs.getString(2));
                p.setUnitTypeName(rs.getString(2));
                list.add(p);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection1.close();
        }

        return list;
    }

    public List<UnitType> get_pasteType(List<String> scopeList) {
        List<UnitType> list = new ArrayList<UnitType>();
        UnitType p;
        connection = new ConnectDB();
        ResultSet rs = null;
        for (Iterator iterator = scopeList.iterator(); iterator.hasNext();) {
            int scope = Integer.parseInt((String) iterator.next());
            sql = "select *from unittype where unitTypeId='" + scope + "' ";
            rs = connection.executeQuery(sql);
            try {
                while (rs.next()) {
                    p = new UnitType();
                    p.setUnitTypeId(rs.getInt(1));
                    // p.setPasteType(rs.getInt(1));
                    // p.setTypeName(rs.getString(2));
                    p.setUnitTypeName(rs.getString(2));
                    list.add(p);

                }

            } catch (SQLException e) {
                e.printStackTrace();
            }

        }

        connection.close();
        return list;
    }

    // 保存单位类别
    public boolean savePasteType(UnitType p) {
        connection = new ConnectDB();
        sql = "insert into unittype values('" + p.getUnitTypeId() + "','"
                + p.getUnitTypeName() + "')";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        return flag;
    }

    // 更新单位类别信息
    public boolean updatePasteType(int id, String typeName) {
        connection = new ConnectDB();
        sql = "update unittype set  unitTypeName='" + typeName
                + "' where unitTypeId='" + id + "'";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        return flag;
    }

    // 返回当前最大的单位类别id
    public int maxPasteTypeId() {
        int max = 0;
        sql = "select max(unitTypeId) as unitTypeId from unittype";

        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                max = rs.getInt(1);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return max;
    }

    public boolean delPasteType(int id, String path, String compressPath) {
        ConnectDB connection1 = new ConnectDB();
        boolean flag = false, unitFlag = false;
        List<Integer> unitIdList = new ArrayList<Integer>();
        sql = "select unitId from unit where unitTypeId='" + id + "'";
        ResultSet rSet = connection1.executeQuery(sql);
        try {
            while (rSet.next()) {
                flag = true;

                unitIdList.add(rSet.getInt(1));
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        if (flag) {
            for (int i = 0; i < unitIdList.size(); i++) {

                unitFlag = delUnit(unitIdList.get(i), path, compressPath);
                if (!unitFlag) {
                    break;
                }
            }
        }
        if (flag) {
            if (unitFlag) {
                sql = "delete from unittype where unitTypeId=?";

                System.out.println(connection);
                flag = connection1.executeUpdate(sql, id);
            } else {
                flag = false;
            }
        } else {

            sql = "delete from unittype where unitTypeId=?";

            flag = connection1.executeUpdate(sql, id);
        }

        connection1.close();
        return flag;
    }

    // 根据类别Groupid返回组类别名字
    public String typeGroupName(int id) {
        String name = null;
        sql = "select *from typeGroup where id='" + id + "' ";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                name = rs.getString(2);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return name;
    }

    // 根据单位类别id返回单位所属类别
    public String typeName(int id) {
        String name = null;
        sql = "select *from unittype where unitTypeId='" + id + "' ";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                name = rs.getString(2);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return name;
    }

    // 根据单位id返回单位名
    public String unitName(int id) {
        String name = null;
        sql = "select *from unit where unitId='" + id + "' ";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                name = rs.getString("unitName");

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return name;
    }

    // 根据用户id返回用户名
    public String userName(int id) {
        String name = null;
        sql = "select *from user where userId='" + id + "' ";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next()) {
                name = rs.getString(2);

            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return name;
    }

    // 返回在数据库中所有用户id
    public int[] userIds() {
        int[] userIds;
        int len = 0;
        sql = "select distinct userId from user ";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next())// id个数
            {
                len++;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        userIds = new int[len];
        int i = 0;
        sql = "select distinct userId from user ";
        connection = new ConnectDB();
        ResultSet rs1 = connection.executeQuery(sql);
        try {
            while (rs1.next())// id个数
            {
                // userIds[i++]=rs1.getInt(1);
                userIds[i++] = rs1.getInt("userId");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return userIds;
    }

    // 返回在数据库中所有单位id
    public int[] unitIds() {
        int[] unitIds;
        int len = 0;
        sql = "select distinct unitId from unit ";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        try {
            while (rs.next())// id个数
            {
                len++;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        unitIds = new int[len];
        int i = 0;
        sql = "select distinct unitId from unit ";
        connection = new ConnectDB();
        ResultSet rs1 = connection.executeQuery(sql);
        try {
            while (rs1.next())// id个数
            {
                unitIds[i++] = rs1.getInt("unitId");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return unitIds;
    }

    // 返回所有粘贴栏类别id
    public int[] pasteTypes() {
        int[] pasteTypes;
        int len = 0;
        sql = "select distinct unitTypeId  from unittype";
        connection = new ConnectDB();
        ResultSet rs = connection.executeQuery(sql);
        System.out.println("返回所有粘贴栏类别id,rs:" + rs);
        try {
            while (rs.next())// id个数
            {
                len++;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        pasteTypes = new int[len];
        int i = 0;
        sql = "select distinct unitTypeId  from unittype";
        connection = new ConnectDB();
        ResultSet rs1 = connection.executeQuery(sql);
        try {
            while (rs1.next())// id个数
            {
                pasteTypes[i++] = rs1.getInt("unitTypeId");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return pasteTypes;
    }

    public boolean updateSuperAdministrator(int unitTypeId) {
        Administrator administrator = getAdmin(1);// 超级管理员默认为此用户名和密码
        String scopes = administrator.getScope();
        scopes = scopes + "|" + unitTypeId;
        sql = "update administrator set scope='" + scopes + "'where id=1";
        connection = new ConnectDB();
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        return flag;
    }

    public boolean addCostManager(int grade, int money, int time) {
        sql = "insert into cost (grade,money,time) values('" + grade + "','"
                + money + "','" + +time + "')";
        connection = new ConnectDB();
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        return flag;
    }

    public boolean updateCostManager(int costId, int grade, int money, int time) {
        sql = "update cost set grade='" + grade + "',money='" + money
                + "',time='" + time + "'where costId='" + costId + "'";
        connection = new ConnectDB();
        boolean flag = connection.executeUpdate(sql);
        System.out.println(flag);
        connection.close();
        return flag;
    }

    public boolean deleteCostManager(int costId) {
        sql = "delete from cost where costId='" + costId + "'";
        connection = new ConnectDB();
        boolean flag = connection.executeUpdate(sql);
        System.out.println(flag);
        connection.close();
        return flag;
    }

    public List<VisitorLog> selectVisitorLogs(String sqlString) {
        connection = new ConnectDB();
        ResultSet rSet = connection.executeQuery(sqlString);
        List<VisitorLog> visitorLogs = new ArrayList<VisitorLog>();
        try {
            while (rSet.next()) {
                VisitorLog visitorLog = new VisitorLog();
                visitorLog.setAdId(rSet.getInt("adID"));
                visitorLog.setPostId(rSet.getInt("postId"));
                visitorLog.setVisitorid(rSet.getInt("visitorID"));
                visitorLog.setTime(rSet.getTimestamp("time"));
                visitorLog.setVisitorip(rSet.getString("visitorIP"));
                visitorLog
                        .setVisitorpostname(rSet.getString("visitorPostName"));
                visitorLogs.add(visitorLog);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            connection.close();
        }
        return visitorLogs;
    }

    public boolean deleteLogManager(String sqlString) {
        connection = new ConnectDB();
        boolean flag = connection.executeUpdate(sqlString);
        System.out.println(flag);
        connection.close();
        return flag;
    }

    public boolean deleteLogManager(int id) {
        ConnectDB connection = new ConnectDB();
        sql = "delete from visitorlog where adID='" + id + "'";
        boolean flag = connection.executeUpdate(sql);
        connection.close();
        return flag;
    }

    public void deleteAdManager(String sql, String path, String picPath) {
        ConnectDB connection = new ConnectDB();
        ResultSet resultSet = connection.executeQuery(sql);
        List<Integer> list = new ArrayList<Integer>();
        try {
            while (resultSet.next()) {
                list.add(resultSet.getInt("adId"));
                String filePath = (path + resultSet.getString("firstPicAddr"))
                        .replace("/", "\\");
                System.out.println(filePath);
                deleteLogManager(resultSet.getInt("adId"));
                deleteFile(filePath);// 删除文件
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        deletePicFile(list, picPath);
        delBatch_pic(list);
        connection.close();

    }

    public void delBatch_pic(List<Integer> list) {
        ConnectDB connectDB = new ConnectDB();
        sql = "delete from pic where adId=?";
        boolean flag = connectDB.executeBatch(sql, listTransformationInt(list));
        connectDB.close();
    }

    public void deleteFile(String path) {
        File file = new File(path);
        if (file.exists()) {
            file.delete();
        }
    }

    // 根据sql语句查询结果判定是否有重复项
    public boolean checkRepeat(String sqlString) {
        connection = new ConnectDB();
        ResultSet rSet = connection.executeQuery(sqlString);
        System.out.println(sqlString);
        boolean flag = false;
        try {
            if (rSet.next()) {
                System.out.println("为真");
                flag = true;
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        connection.close();
        return flag;
    }

    public List<BrowserControl> selectBrowserControls() {
        connection = new ConnectDB();
        sql = "select * from browserControl";
        ResultSet resultSet = connection.executeQuery(sql);
        List<BrowserControl> browserControls = new ArrayList<BrowserControl>();
        try {
            while (resultSet.next()) {
                BrowserControl browserControl = new BrowserControl();
                browserControl.setId(resultSet.getInt("id"));
                browserControl.setRow(resultSet.getInt("Row"));
                browserControls.add(browserControl);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return browserControls;
    }

    public boolean updateBrowserPicNum(int id, String row) {
        connection = new ConnectDB();
        sql = "update browserControl set Row='" + row + "'where id='" + id
                + "'";
        boolean flag = connection.executeUpdate(sql);
        return flag;
    }

}
