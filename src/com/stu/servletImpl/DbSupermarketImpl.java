package com.stu.servletImpl;

import com.stu.pojo.DbSupermarket;
import com.stu.pojo.User;
import com.stu.servlet.DbSupermarketSerclet;
import com.stu.util.DbConfig;

import javax.sound.midi.Soundbank;
import java.sql.*;
import java.util.*;

public class DbSupermarketImpl implements DbSupermarketSerclet {

//查找全部
    @Override
    public List<DbSupermarket> findAll() {
        //DbSupermarket dd=new DbSupermarket();
        List<DbSupermarket > dbSupermarket= new ArrayList<DbSupermarket>();


        try {
            String sql = "SELECT * FROM dbSupermarket";
            PreparedStatement ps = null;
            Statement stmt = null;
            ResultSet rs = null;
            DbConfig dbConfig = new DbConfig();
            Connection conn = dbConfig.getCon();
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
           // System.out.println(rs.getInt("GID"));
            while (rs.next()) {
                if(rs!=null) {
                    DbSupermarket dd = new DbSupermarket();
                    //System.out.println(rs.getInt("GID"));
                    dd.setGId(rs.getInt("GID"));
                    dd.setGNAME(rs.getString("GNAME"));
                    dd.setGPRICE(rs.getFloat("GPRICE"));
                    dbSupermarket.add(dd);
                }
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return dbSupermarket;
    }

    @Override
    public  List<DbSupermarket>  findOne(int GID) {
        List<DbSupermarket > dbSupermarket= new ArrayList<DbSupermarket>();

        try {
            String sql = "SELECT * FROM dbSupermarket where GID=?";

            DbConfig dbConfig = new DbConfig();
            Connection conn = dbConfig.getCon();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,GID);
            ResultSet  rs = ps.executeQuery();

            // System.out.println(rs.getInt("GID"));
            while (rs.next()) {
                System.out.println(rs.getInt("GID"));
                if(rs!=null) {
                    DbSupermarket dd = new DbSupermarket();
                    //System.out.println(rs.getInt("GID"));
                    dd.setGId(rs.getInt("GID"));
                    dd.setGNAME(rs.getString("GNAME"));
                    dd.setGPRICE(rs.getFloat("GPRICE"));
                    dbSupermarket.add(dd);
                }
            }

            rs.close();
            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return dbSupermarket;

    }

    public static void main(String[] args) {
        DbSupermarketImpl dbSupermarket= new DbSupermarketImpl();
        List<DbSupermarket> one = dbSupermarket.findOne(19);
        System.out.println(one.get(1));
    }

    //改
    @Override
    public int updateDbsupermarket(DbSupermarket dbSupermarket) {
        try {
            DbConfig dbConfig = new DbConfig();
            Connection conn = dbConfig.getCon();
            String sql = "update dbSupermarket set GNAME = ?,GPRICE = ? where GID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1,dbSupermarket.getGNAME());
            ps.setFloat(2,dbSupermarket.getGPRICE());
            ps.setInt(3,dbSupermarket.getGId());

            ps.executeUpdate();
            ps.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return 1;
    }
//删除
    @Override
    public int deleteDbsupermarket(int gid) {
        try {
            DbConfig dbConfig = new DbConfig();
            Connection conn = dbConfig.getCon();
            String sql = "delete from dbSupermarket where GID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,gid);
            ps.executeUpdate();

            ps.close();
            conn.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return 1;


    }
//增加
    @Override
    public int AddDbsupermarket(DbSupermarket dbSupermarket) {
        try {
            String sql = "insert  into  dbSupermarket(GNAME,GPRICE) values(?,?)";
            Statement stmt = null;
            ResultSet rs = null;
            DbConfig dbConfig = new DbConfig();
            Connection conn = dbConfig.getCon();
            PreparedStatement ps= conn.prepareStatement(sql);
            //ps.setInt(1,dbSupermarket.getGId());
            ps.setString(1,dbSupermarket.getGNAME());
            ps.setFloat(2,dbSupermarket.getGPRICE());
            ps.executeUpdate();
            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 1;
    }
}
