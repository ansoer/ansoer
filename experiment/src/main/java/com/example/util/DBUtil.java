package com.example.util;
import java.sql.*;
public class DBUtil {
    private static String driver = "com.mysql.jdbc.Driver";
    private static String url = "jdbc:mysql://111.230.45.109:3306/user?useSSL=false&serverTimezone=UTC";
    private static String user = "user";
    private static String psw = "admin123";
    int row = 0;
    static Connection con = null;
    public static Connection getCon() {
        try {
            // 1.加载数据库驱动
            Class.forName(driver);
            // 2.获取数据库连接
            con = DriverManager.getConnection(url, user, psw);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}
