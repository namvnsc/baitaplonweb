/* @vannamsc */

package DAO;
import DAO.BaseDAO;
import java.util.ArrayList;
import Entities.contest.Contest;
import Entities.contest.Problem;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Collections;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DAO_Contest implements BaseDAO{

    public DAO_Contest() {
        super();
    }
    
    public ArrayList<Contest> getAll(){
        ArrayList<Contest> ds = new ArrayList<>();
        String sql = "select * from contest";
        try{
            PreparedStatement pre = con.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while(rs.next()){
                Contest c = new Contest();
                c.setMa(rs.getString("Ma"));
                c.setTen(rs.getString("Ten"));
                c.setThoiDiemBatDau(rs.getTime("Thoi_Diem_Bat_Dau").getTime() 
                        + rs.getDate("Thoi_Diem_Bat_Dau").getTime()
                        + 7*60*60*1000);
                c.setThoiGian(rs.getFloat("Thoi_Gian"));
                c.setTrangThai();
                ds.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO_Contest.class.getName()).log(Level.SEVERE, null, ex);
        }
        Collections.sort(ds, 
                (Contest o1, Contest o2) -> (int)(-o1.getThoiDiemBatDau()+o2.getThoiDiemBatDau()));
        return ds;
    }
    
    public Contest getByCode(String ma){
        Contest c = new Contest();
        String sql = "select * from contest where Ma=?";
        try{
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, ma);
            ResultSet rs = pre.executeQuery();
            while(rs.next()){
                c.setMa(rs.getString("Ma"));
                c.setTen(rs.getString("Ten"));
                c.setThoiDiemBatDau(rs.getTime("Thoi_Diem_Bat_Dau").getTime() 
                        + rs.getDate("Thoi_Diem_Bat_Dau").getTime()
                        + 7*60*60*1000);
                c.setThoiGian(rs.getFloat("Thoi_Gian"));
                c.setTrangThai();
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO_Contest.class.getName()).log(Level.SEVERE, null, ex);
        }
        return c;
    }
    
    public boolean save(Contest ct){
        
        String sql = "insert into contest(Ma, Ten, Thoi_Diem_Bat_Dau, Thoi_Gian) values(?, ?, ?, ?)";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, ct.getMa());
            pre.setString(2, ct.getTen());
            pre.setTimestamp(3, new Timestamp(ct.getThoiDiemBatDau()));
            pre.setFloat(4, ct.getThoiGian());
            boolean rs = pre.execute();
        } catch (SQLException ex) {
            Logger.getLogger(DAO_Submission.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        boolean ok = true;
        for(Problem pro: ct.getListProblem()){
            if(!(new DAO_Problem()).save(pro, ct.getMa())){
//                sql = "Rollback"
                return false;
            }
        }
        return true;
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
