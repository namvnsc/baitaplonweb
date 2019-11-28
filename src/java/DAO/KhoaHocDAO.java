/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entities.KhoaHoc;
import databaseconfig.ConnectDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author nguyenthang
 */
public class KhoaHocDAO {

    Connection con = ConnectDB.openConnect();

    public List<KhoaHoc> getAll() {
        try {
            List<KhoaHoc> list = new ArrayList<>();
            String sql = "select * from khoa_hoc";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                KhoaHoc kh=new KhoaHoc(rs.getString("ten"), rs.getString("Mo_Ta"), rs.getString("Url_Anh"));
                kh.setUrl(rs.getString("url"));
                list.add(kh);
            }
//            System.out.println(list.size());
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(KhoaHocDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
