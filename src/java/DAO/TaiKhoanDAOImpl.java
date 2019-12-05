/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entities.TaiKhoan;
import databaseconfig.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nguyenthang
 */
public class TaiKhoanDAOImpl implements TaiKhoanDAO{

    public boolean checkAccount(TaiKhoan a) {
        try {
            String sql = "select * from tai_khoan where username = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, a.getUsername());
            ResultSet rs = ps.executeQuery();
            rs.first();
            String pw = rs.getString("password");
            System.out.println(a.getPassword());
            System.out.println(rs.getString("password"));
            if (pw.equalsIgnoreCase(a.getPassword())) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(TaiKhoanDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
  public boolean checkUsername(String username) {
        try {
            String sql = "select * from tai_khoan where username = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return true;
            } else {
                return false;
            }
        } catch (SQLException ex) {
            Logger.getLogger(TaiKhoanDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public TaiKhoan getAccByUsername(String username) {
        try {
            String sql = "select * from tai_khoan where username = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                TaiKhoan a=new TaiKhoan(username, rs.getString("password"), rs.getString("hoten"), rs.getString("email"), rs.getString("sodienthoai"),rs.getString("avatar"), rs.getString("role"));
                return a;
            } else {
                return null;
            }
        } catch (SQLException ex) {
            Logger.getLogger(TaiKhoanDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void insertAccount(TaiKhoan a) {
        try {
            System.out.println(a.toString());
            String sql = "insert into tai_khoan(password,id,username,hoten,email,sodienthoai) values(?,?,?,?,?,?);";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(3, a.getUsername());
            ps.setInt(2, Integer.parseInt((System.currentTimeMillis() + "").substring(8)));
            ps.setString(1, a.getPassword());
            ps.setString(4, a.getHoten());
            ps.setString(5, a.getEmail());
            ps.setString(6, a.getSdt());
            int rs = ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TaiKhoanDAOImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public List<TaiKhoan> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public TaiKhoan find(String ma) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public TaiKhoan save(TaiKhoan t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public TaiKhoan update(TaiKhoan t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public TaiKhoan delete(TaiKhoan t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
