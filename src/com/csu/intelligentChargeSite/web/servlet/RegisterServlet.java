package com.csu.intelligentChargeSite.web.servlet;

import com.alibaba.fastjson.JSONObject;
import com.csu.intelligentChargeSite.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/registerServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 设置编码
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        // 获取前台传来的用户注册的信息
        String registerJsonStr = req.getParameter("registerJson");
        System.out.println(registerJsonStr);

        // 后台插入数据的判断逻辑如下：
        // name、phone、mail不能有一样的，只要发现有一样的则注册失败
        // 首先判断是否有一样的没有，返回bool值
        // 为false，传回给页面的json为空
        // 为true，传回给页面的json暂定
        JSONObject registerJsonObj = JSONObject.parseObject(registerJsonStr);
        UserDao userDao = new UserDao();
        Boolean checkName = userDao.checkRegisterUser(registerJsonObj, "name");
        Boolean checkPhone = userDao.checkRegisterUser(registerJsonObj, "phone");
        Boolean checkMail = userDao.checkRegisterUser(registerJsonObj, "mail");
        // 如果全都返回false则应该把这一条数据插入到数据库中
        if (!(checkName || checkPhone || checkMail)){
            userDao.registerInsert(registerJsonObj);
        }
        // 传回给浏览器的json值
        if (checkName || checkPhone || checkMail){
            JSONObject json = (JSONObject) JSONObject.parse("{'register':'false'}");
            resp.getWriter().print(json);
        } else {
            JSONObject json = (JSONObject) JSONObject.parse("{'register':'true'}");
            resp.getWriter().print(json);
        }

    }
}
