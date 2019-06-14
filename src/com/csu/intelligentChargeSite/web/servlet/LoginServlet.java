package com.csu.intelligentChargeSite.web.servlet;

import com.alibaba.fastjson.JSONObject;
import com.csu.intelligentChargeSite.dao.UserDao;
import com.csu.intelligentChargeSite.domain.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 设置编码
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        // 获取浏览器传来的json信息
        String loginJsonStr = req.getParameter("loginJson");
        System.out.println(loginJsonStr);
        JSONObject loginJsonObj = JSONObject.parseObject(loginJsonStr);
        // 将其封装成User对象
        User loginUser = new User();
        loginUser.setName((String) loginJsonObj.get("name"));
        loginUser.setPassword((String) loginJsonObj.get("password"));
        // 再判断该用户是否存在
        UserDao userDao = new UserDao();
        User u = userDao.checkLogin(loginUser);

        // 如果u不为null，则将其存到session之中
        HttpSession session = req.getSession();
        if (u != null){
            session.setAttribute("user", u);
        }

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("user", u);
        resp.getWriter().print(jsonObject);
    }
}
