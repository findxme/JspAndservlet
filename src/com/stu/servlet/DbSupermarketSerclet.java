package com.stu.servlet;

import com.stu.pojo.DbSupermarket;

import java.util.List;

public interface DbSupermarketSerclet {
    List<DbSupermarket> findAll();

    List<DbSupermarket> findOne(int GID);

    int updateDbsupermarket(DbSupermarket dbSupermarket);

    int deleteDbsupermarket(int gid);

    int AddDbsupermarket(DbSupermarket dbSupermarket);

}
