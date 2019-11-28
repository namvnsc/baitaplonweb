/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import static DAO.BaseDAO.con;
import Entities.NoiDung;
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
public class NoiDungDAOImpl implements NoiDungDAO{

    @Override
    public List<NoiDung> findByMaPhan(String maPhan) {
        try {
            String sql = "select * from Noi_Dung where Ma_Phan = ? ORDER BY Ma ASC";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, maPhan);
            ResultSet rs = ps.executeQuery();
            List<NoiDung> noiDungs = new ArrayList<>();
            while (rs.next()) {
                NoiDung noiDung = new NoiDung();
                noiDung.setMa(rs.getString("Ma"));
                noiDung.setLoai(rs.getString("Loai"));
                noiDung.setNoiDung(rs.getString("Noi_Dung"));
                noiDung.setSoThuTu(rs.getInt("So_Thu_Tu"));
                noiDungs.add(noiDung);
            }
            return noiDungs;
        } catch (SQLException ex) {
            return null;
        }}

    @Override
    public List<NoiDung> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public NoiDung find(String ma) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public NoiDung save(NoiDung t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public NoiDung update(NoiDung t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public NoiDung delete(NoiDung t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    public static void main(String[] args) {
        System.out.println(new NoiDungDAOImpl().findByMaPhan("LC01P01"));
    }
    
}
