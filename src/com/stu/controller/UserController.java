package com.stu.controller;

import com.stu.pojo.User;
import com.stu.servlet.UserServlet;
import com.stu.servletImpl.UserImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserController extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        String uname = request.getParameter("fAccount");
        String password = request.getParameter("fPassword");
        User user=new User();
        System.out.println(password);
        user.setName(uname);
        user.setPassword(password);
        UserServlet userServlet=new UserImpl();
        int i = userServlet.findAll(user);
        if (i == 1) {
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } else {
            request.setAttribute("msg", "，登陆失败，账号或密码错误");

            request.getRequestDispatcher("shibai.jsp").forward(request, response);
        }
    }
}
