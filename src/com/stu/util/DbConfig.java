package com.stu.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;
public class DbConfig {

    /**
     * 数据库连接类
     */
    private static String username=null;
    private static String password=null;
    private static  String driver=null;
    private static String url=null;
    static{
        Properties ps=new Properties();
        try {
            ps.load(DbConfig.class.getResourceAsStream("db.properties"));
            driver=ps.getProperty("driver");
            url=ps.getProperty("url");
            username=ps.getProperty("username");
            password=ps.getProperty("password");
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    public   Connection getCon() throws Exception{
        Class.forName(driver);
        Connection con=DriverManager.getConnection(url, username, password);
        return con;
    }
//    public static void Close(Connection con)throws Exception{
//        if(con!=null){
//            con.close();
//        }
//    }
//    public void closeCon(Connection con) {
//        // TODO Auto-generated method stub
//        if(con!=null){
//            try {
//                con.close();
//            } catch (SQLException e) {
//                // TODO Auto-generated catch block
//                e.printStackTrace();
//            }
//        }
//    }
//    public   void main(String[] args) {
//        try {
//            System.out.println(getCon());
//        } catch (Exception e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//    }

}
