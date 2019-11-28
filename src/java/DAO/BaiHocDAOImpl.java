/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entities.BaiHoc;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ABC
 */
public class BaiHocDAOImpl implements BaiHocDAO {

    @Override
    public List<BaiHoc> findByMaKhoaHoc(String maKhoaHoc) {
        try {
            String sql = "select * from Bai_Hoc where Ma_Khoa_Hoc = ? ORDER BY Ma ASC";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, maKhoaHoc);
            ResultSet rs = ps.executeQuery();
            List<BaiHoc> baiHocs = new ArrayList<>();
            while (rs.next()) {
                BaiHoc baiHoc = new BaiHoc();
                baiHoc.setMa(rs.getString("Ma"));
                baiHoc.setTen(rs.getString("ten"));
                baiHoc.setSoThuTu(rs.getInt("So_Thu_Tu"));
                baiHocs.add(baiHoc);
            }
            return baiHocs;
        } catch (SQLException ex) {
            return null;
        }
    }

    @Override
    public List<BaiHoc> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public BaiHoc find(String ma) {
        try {
            String sql = "select * from Bai_Hoc where Ma = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, ma);
            ResultSet rs = ps.executeQuery();
            BaiHoc baiHoc = new BaiHoc();
            rs.first();
            baiHoc.setMa(rs.getString("Ma"));
            baiHoc.setTen(rs.getString("ten"));
            baiHoc.setSoThuTu(rs.getInt("So_Thu_Tu"));
            return baiHoc;
        } catch (SQLException ex) {
            return null;
        }
    }

    @Override
    public BaiHoc save(BaiHoc t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public BaiHoc update(BaiHoc t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public BaiHoc delete(BaiHoc t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public static void main(String[] args) {

        System.out.println(new BaiHocDAOImpl().findByMaKhoaHoc("KH01"));
    }
}
