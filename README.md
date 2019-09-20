# JspAndservlet
本項目用jsp和servlet和原生jdbc实现了基本的增删改查，和登陆功能，


controller（控制层） 
CommodityController（产品的控制器） 所有的商品查找请求都是映射到这个文件的post请求， 然后通过反射获取本类的所有方法，然后根据请求去调用不同的方法 实现对应不同请求的方法调用，
具体参考https://blog.csdn.net/Sirius_hly/article/details/84640838 UserController（用户登录）

dao（暂时没用）

pojo实体类

servlet（servlet接口类）

servletImpl（接口实现类）（实现增删改查）

util（工具类）
jdbc工具类 
  db.properties（jdbc连接信息）

web 
  web-inf 
    web.xml(页面提交地址的映射) 
  index.jsp(主页) 
  home.jsp(登陆成功后转发到commodity.jsp) 
  commodity.jsp(主页) Details.jsp(详情页) 
  shibai.jsp 
  注意本项目依赖包javax-servlet-api-3.0.1.jar，jstl-1.2.jar,mysql-connector-java-8.0.17.jar
