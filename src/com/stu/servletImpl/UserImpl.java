package com.stu.servletImpl;

import com.stu.pojo.User;
import com.stu.servlet.UserServlet;

import com.stu.util.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserImpl implements UserServlet {

    @Override
    public int findAll(User user) {
        String uname = user.getName();
        String password = user.getPassword();
        System.out.println("查询里面的"+uname);
        boolean flag = true;
        int i=1;
        try {
            System.out.println("检测是否有运行查询1");
            String sql = "SELECT * FROM user";
            PreparedStatement ps = null;
            Statement stmt = null;
            ResultSet rs = null;

            DbConfig dbConfig = new DbConfig();

            Connection conn = dbConfig.getCon();

            stmt = conn.createStatement();

            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                String name = rs.getString("name");
                String password1 = rs.getString("password");

                if (name.equals(uname) && password1.equals(password)) {

                    i=1;
                }

            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (i==1){
            return 1;
        }
        else
            return 0;
    }

    @Override
    public void insertId() {

    }


}
