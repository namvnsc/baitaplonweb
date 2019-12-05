/* @vannamsc */

package DAO;
import DAO.BaseDAO;
import java.util.ArrayList;
import Entities.contest.Contest;
import Entities.TaiKhoan;
import Entities.contest.Register;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DAO_Register implements BaseDAO{

    public DAO_Register() {
        super();
    }
    
    public ArrayList<Register> getAll(String maContest){
        ArrayList<Register> ds = new ArrayList<>();
        String sql = "select * from register where Ma_Contest=?";
        try{
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, maContest);
            ResultSet rs = pre.executeQuery();
            while(rs.next()){
                Register c = new Register();
                c.setTaiKhoan(new TaiKhoan(rs.getString("Username"), null));
                c.setId(rs.getInt("ID"));
                ds.add(c);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO_Contest.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ds;
    }
    
    public boolean checkRegister(String us, String cc){
        String sql = "select * from register where Username=? and Ma_Contest=?";
        try{
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, us);
            pre.setString(2, cc);
            ResultSet rs = pre.executeQuery();
            if(rs.next()){
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO_Contest.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public boolean save(String us, String ma){
        String sql = "insert into register(Username, Ma_Contest) values(?, ?)";
        try{
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, us);
            pre.setString(2, ma);
            pre.execute();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(DAO_Contest.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
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
