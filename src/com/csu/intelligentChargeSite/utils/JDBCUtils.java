package com.csu.intelligentChargeSite.utils;

import com.alibaba.fastjson.JSONObject;
import com.csu.intelligentChargeSite.domain.PropertiesDomain;
import com.csu.intelligentChargeSite.domain.User;
import sun.security.util.AuthResources_it;


import javax.xml.transform.sax.SAXTransformerFactory;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

// 工具类，操作JDBC
public class JDBCUtils {
    static PropertiesDomain p;
    // 读取配置文件
    public static PropertiesDomain readProperties(){
        Properties properties = new Properties();
        InputStream is = JDBCUtils.class.getClassLoader().getResourceAsStream("JDBC.properties");
        try {
            properties.load(is);
            p = new PropertiesDomain();
            p.setDriverClassName(properties.getProperty("driverClassName"));
            p.setUrl(properties.getProperty("url"));
            p.setDataBase(properties.getProperty("dataBase"));
            p.setUserTable(properties.getProperty("userTable"));
            p.setUsername(properties.getProperty("username"));
            p.setPassword(properties.getProperty("password"));
            return p;
        } catch (IOException e) {
            e.printStackTrace();
            System.out.println("JDBCUtils类的readProperties方法有错误");
            return null;
        }
    }

    static Connection conn = null;
    private static void getJDBCConnection(PropertiesDomain propertiesDomain){
        try {
            Class.forName(propertiesDomain.getDriverClassName());
            conn = DriverManager.getConnection(propertiesDomain.getUrl() + "/" + propertiesDomain.getDataBase() + "?useUnicode=true&characterEncoding=UTF-8", propertiesDomain.getUsername(), propertiesDomain.getPassword());
            System.out.println("连接数据库成功");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.out.println("JDBCUtils类的getJDBCConnection方法出现异常，连接数据库失败！");
        }
    }

    static PreparedStatement ps = null;
    static ResultSet rs = null;

    public static Boolean checkRegister(String sql){
        JDBCUtils.getJDBCConnection(JDBCUtils.readProperties());  // 获取JDBC连接
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            if (!rs.next()){
                return false;  // 返回false代表未查到结果
            } else {
                return true;  // 查到结果返回true
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("JDBCUtils类的checkRegister方法出现异常");
            return true;  // 出错也返回true
        }
    }

    // 用于用户注册成功后将其数据插入到数据中之中的函数
    public static void registerInsert(JSONObject jsonObject, String sql){
        String name = (String) jsonObject.get("name");
        String password = (String) jsonObject.get("password");
        String phone = (String) jsonObject.get("phone");
        String mail = (String) jsonObject.get("mail");

        JDBCUtils.getJDBCConnection(JDBCUtils.readProperties());  // 获得JDBC连接
        try {
            ps = conn.prepareStatement(sql);
            ps.setObject(1, name);
            ps.setObject(2, password);
            ps.setObject(3, phone);
            ps.setObject(4, mail);
            int registerInsertCount = ps.executeUpdate();
            System.out.println("执行用户注册完成之后返回插入的行数-->" + registerInsertCount);
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("JDBCUtils类的registerInsert方法出现异常");
        }

    }


    static User u;
    // 判断登陆用户是否存在
    public static User checkLogin(String sql, User user){
        JDBCUtils.getJDBCConnection(JDBCUtils.readProperties());  // 获得JDBC连接
        try {
            ps = conn.prepareStatement(sql);
            ps.setObject(1, user.getName());
            ps.setObject(2, user.getPassword());
            rs = ps.executeQuery();
            while (rs.next()){
                u = new User();
                u.setId(rs.getInt(1));
                u.setName(rs.getString(2));
                u.setPassword(rs.getString(3));
                u.setPhone(rs.getString(4));
                u.setMail(rs.getString(5));
                return u;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("JDBCUtils类的checkLogin方法出现异常");
        }
        return null;
    }

    public static void main(String[] args) {
        PropertiesDomain propertiesDomain = new PropertiesDomain();
        propertiesDomain = readProperties();
        System.out.println(propertiesDomain);
        getJDBCConnection(propertiesDomain);
    }
}
