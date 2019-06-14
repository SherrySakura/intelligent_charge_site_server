package com.csu.intelligentChargeSite.dao;

import com.alibaba.fastjson.JSONObject;
import com.csu.intelligentChargeSite.domain.User;
import com.csu.intelligentChargeSite.utils.JDBCUtils;

// 最基本的增删改查语句
public class UserDao {

    // 检查数据库中是否存在相同的name、phone、mail
    // 有则返回true
    // 没有返回false
    public boolean checkRegisterUser(JSONObject jsonObject, String str){
        String sql;
        if (str.equals("name")){
            String name = (String) jsonObject.get("name");
            sql = "select * from user where name = '" + name + "'";
            return JDBCUtils.checkRegister(sql);
        } else if (str.equals("phone")){
            String phone = (String) jsonObject.get("phone");
            sql = "select * from user where phone = '" + phone + "'";
            return JDBCUtils.checkRegister(sql);
        } else if (str.equals("mail")){
            String mail = (String) jsonObject.get("mail");
            sql = "select * from user where mail = '" + mail + "'";
            return JDBCUtils.checkRegister(sql);
        } else {
            return true;
        }
    }

    public void registerInsert(JSONObject jsonObject){
        String sql = "insert into user (name,password,phone,mail) values(?,?,?,?)";
        JDBCUtils.registerInsert(jsonObject, sql);
    }

    // 判断登陆的用户是否存在
    // 存在返回User对象
    // 不存在返回null
    public User checkLogin(User user){
        String sql = "select * from user where name = ? and password = ?";
        return JDBCUtils.checkLogin(sql, user);
    }
}
