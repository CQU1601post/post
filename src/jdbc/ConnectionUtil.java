package jdbc;


import java.io.IOException;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSourceFactory;

import configurations.Configuration;


import java.sql.Connection;


import java.sql.Connection;


public class ConnectionUtil {
    private static BasicDataSourceFactory basicDataSourceFactory=null;
    private static   DataSource DataSource=null;
    private  static   Connection con=null;
    static{
        Properties dbProperties = new Properties();
        try {
            dbProperties.load(ConnectionUtil .class.getClassLoader()
                    .getResourceAsStream("dbcp.properties"));
            basicDataSourceFactory=new BasicDataSourceFactory();
          
           DataSource=basicDataSourceFactory.createDataSource( dbProperties);
           System.out.println("DataSource初始化");
        } catch (Exception e) {
          
            e.printStackTrace();
        }
        
    }
    
    
    public static Connection getCon(){
   
        
        try {
            con= DataSource.getConnection();
            con.setAutoCommit(true);
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
        return con;
    }
    
  
}
