/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static DAO.BaseDAO.con;
import Entities.BaiHoc;
import Entities.Phan;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ABC
 */
public class PhanDAOImpl implements PhanDAO {

    @Override
    public List<Phan> findByMaBaiHoc(String maBaiHoc) {
        try {
            String sql = "select * from Phan where Ma_Bai_Hoc = ? ORDER BY Ma ASC";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, maBaiHoc);
            ResultSet rs = ps.executeQuery();
            List<Phan> phans = new ArrayList<>();
            while (rs.next()) {
                Phan phan = new Phan();
                phan.setMa(rs.getString("Ma"));
                phan.setTen(rs.getString("ten"));
                phan.setSoThuTu(rs.getInt("So_Thu_Tu"));
                phans.add(phan);
            }
            return phans;
        } catch (SQLException ex) {
            return null;
        }
    }

    @Override
    public List<Phan> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Phan find(String ma) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Phan save(Phan t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Phan update(Phan t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Phan delete(Phan t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public static void main(String[] args) {
        System.out.println(new PhanDAOImpl().findByMaBaiHoc("LC01"));
    }

}
