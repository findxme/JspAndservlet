package com.stu.controller;

import com.stu.pojo.DbSupermarket;
import com.stu.servlet.DbSupermarketSerclet;
import com.stu.servletImpl.DbSupermarketImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"*.do"})
public class CommodityController extends HttpServlet {


    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html;charset=UTF-8");

        doGet(request, response);
    }


    public void doGet(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=utf-8");

        String url = request.getRequestURI();
        String methodName = url.substring(url.lastIndexOf("/")+1, url.lastIndexOf("."));
        Method method = null;
        try {
            // 使用反射机制获取在本类中声明了的方法
            method = getClass().getDeclaredMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
            // 执行方法
            method.invoke(this, request, response);

        } catch (Exception e) {
            throw new RuntimeException("调用方法出错");
        }
    }


    //增加
    public void adEmp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //System.out.println("123");
        request.setCharacterEncoding("UTF-8");
        DbSupermarket dbSupermarket=new DbSupermarket();
        System.out.println("456");
        dbSupermarket.setGNAME(request.getParameter("GNAME"));
        System.out.println(request.getParameter("GNAME"));
       float a= Float.parseFloat(request.getParameter("GPRICE"));

        dbSupermarket.setGPRICE(a);

        DbSupermarketSerclet dbSupermarketSerclet=new DbSupermarketImpl();
       int i= dbSupermarketSerclet.AddDbsupermarket(dbSupermarket);

       if (i==1){
           List<DbSupermarket> list=new ArrayList<DbSupermarket>();
           list= dbSupermarketSerclet.findAll();

           request.setAttribute("applies",list);
           request.getRequestDispatcher("commodity.jsp").forward(request, response);
       }


    }

    //查找全部
    public void selectAllEmp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DbSupermarketSerclet dbSupermarketSerclet = new DbSupermarketImpl();

        List<DbSupermarket> list=new ArrayList<DbSupermarket>();
        list= dbSupermarketSerclet.findAll();
        //System.out.println(list);
        request.setAttribute("applies",list);

        request.getRequestDispatcher("commodity.jsp").forward(request, response);
    }
    //详情
    public void selectOne(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DbSupermarketSerclet dbSupermarketSerclet = new DbSupermarketImpl();
       String a= request.getParameter("GID");
        int id =Integer.parseInt(request.getParameter("GID"));
        System.out.println(id);
        List<DbSupermarket> list=new ArrayList<DbSupermarket>();
        list= dbSupermarketSerclet.findOne(id);

        //System.out.println(list);
        request.setAttribute("appli",list);
       request.setAttribute("msg", "有病，都展示全部信息了还要看");
        request.getRequestDispatcher("Details.jsp").forward(request, response);

    }
    //模糊查询
    public void selectByEmpName(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String name = request.getParameter("selectName");
//        EmployeeDao employeeDao = new EmployeeDaoImpl();
//        List<Employee> list = employeeDao.query(name);
//        System.err.println("list："+list);
//        request.setAttribute("list", list);
//        request.getRequestDispatcher("/javaWeb/manage/main.jsp").forward(request, response);
    }
    //更新数据
    public void updateEmp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        DbSupermarketSerclet dbSupermarketSerclet = new DbSupermarketImpl();
        request.setCharacterEncoding("UTF-8");
        request.getParameter("GNAME");
        request.getParameter("GPRICE");
        System.out.println( request.getParameter("GPRICE"));
        DbSupermarket dbSupermarket =new DbSupermarket();
        int id=Integer.parseInt(request.getParameter("GID"));
        dbSupermarket.setGId(id);
        dbSupermarket.setGNAME( request.getParameter("GNAME"));
        float a= Float.parseFloat(request.getParameter("GPRICE"));
        dbSupermarket.setGPRICE(a);

        DbSupermarketSerclet dbSupermarketSerclet1 =new DbSupermarketImpl();
       int i= dbSupermarketSerclet.updateDbsupermarket(dbSupermarket);
        selectAllEmp(request,response);

    }

    //删除
    public void deleteEmp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String deleteId = request.getParameter("deleteId");
        int a = Integer.parseInt(deleteId);
        System.out.println(a);
        DbSupermarketSerclet dbSupermarketSerclet = new DbSupermarketImpl();
       int i= dbSupermarketSerclet.deleteDbsupermarket(a);
        if (i==1){
            List<DbSupermarket> list=new ArrayList<DbSupermarket>();
            list= dbSupermarketSerclet.findAll();
            //System.out.println(list);
            request.setAttribute("applies",list);
            request.getRequestDispatcher("commodity.jsp").forward(request, response);
        }

    }


//    @Override
//    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//        DbSupermarketSerclet dbSupermarketSerclet = new DbSupermarketImpl();
//
//        List<DbSupermarket> list=new ArrayList<DbSupermarket>();
//        list= dbSupermarketSerclet.findAll();
//        System.out.println(list);
//        request.setAttribute("applies",list);
//
//        request.getRequestDispatcher("commodity.jsp").forward(request, response);
//
//    }

}
