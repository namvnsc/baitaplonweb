/* @vannamsc */

package DAO;

import DAO.BaseDAO;
import Entities.contest.Problem;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DAO_Problem implements BaseDAO{
    public DAO_Problem(){
        super();
    }
    public ArrayList<Problem> getAll(String maContest){
        ArrayList<Problem> ds = new ArrayList<>();
        String sql = "select * from Problem where Ma_Contest=?";
        try{
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, maContest);
            ResultSet rs = pre.executeQuery();
            while(rs.next()){
                Problem p = new Problem();
                p.setDiem(rs.getInt("Diem"));
                p.setSoThuTu(rs.getInt("So_Thu_Tu"));
                p.setBaiTap((new DAO_BaiTap()).getByCode(rs.getString("Ma_Bai_Tap")));
                ds.add(p);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO_Problem.class.getName()).log(Level.SEVERE, null, ex);
        }
        Collections.sort(ds, (Problem o1, Problem o2)-> o1.getSoThuTu()-o2.getSoThuTu());
        return ds;
    }

    public Problem getBySoThuThu(String maContest, int soThuTu){
        Problem p = new Problem();
        String sql = "select * from Problem where Ma_Contest=? and So_Thu_Tu=?";
        try{
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, maContest);
            pre.setInt(2, soThuTu);
            ResultSet rs = pre.executeQuery();
            if(rs.next()){
                p.setDiem(rs.getInt("Diem"));
                p.setSoThuTu(rs.getInt("So_Thu_Tu"));
                p.setBaiTap((new DAO_BaiTap()).getByCode(rs.getString("Ma_Bai_Tap")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO_Problem.class.getName()).log(Level.SEVERE, null, ex);
        }
        return p;
    }
    
    @Override
    public List findAll() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object find(String ma) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object save(Object t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object update(Object t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Object delete(Object t) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
