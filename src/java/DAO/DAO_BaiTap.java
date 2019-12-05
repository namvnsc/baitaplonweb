/* @vannamsc */

package DAO;

import DAO.BaseDAO;
import Entities.contest.BaiTap;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DAO_BaiTap implements BaseDAO{
    public DAO_BaiTap(){
        super();
    }
    
    public ArrayList<BaiTap> getAll(){
        ArrayList<BaiTap> ds = new ArrayList<>();
        String sql = "select * from bai_tap";
        try{
            PreparedStatement pre = con.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while(rs.next()){
                BaiTap bt = new BaiTap();
                bt.setMa(rs.getString("Ma"));
                bt.setTen(rs.getString("Ten"));
                bt.setDeBai(rs.getString("De_Bai"));
//                bt.setTestViDu(rs.getString("Testcase_Vi_Du"));
                bt.setGioiHanThoiGian(rs.getFloat("Gioi_Han_Thoi_Gian"));
                bt.setFileInput(rs.getString("File_Input"));
                bt.setFileOutput(rs.getString("File_Output"));
//                bt.setUrlAnhMinhHoa(rs.getString("Url_Anh_Minh_Hoa"));
                ds.add(bt);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO_BaiTap.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ds;
    }
    
    public ArrayList<BaiTap> getAll(String maBaiHoc){
        ArrayList<BaiTap> ds = new ArrayList<>();
        String sql = "select * from bai_tap where Ma_Bai_Hoc=?";
        try{
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, maBaiHoc);
            ResultSet rs = pre.executeQuery();
            while(rs.next()){
                BaiTap bt = new BaiTap();
                bt.setMa(rs.getString("Ma"));
                bt.setTen(rs.getString("Ten"));
                bt.setDeBai(rs.getString("De_Bai"));
//                bt.setTestViDu(rs.getString("Testcase_Vi_Du"));
                bt.setGioiHanThoiGian(rs.getFloat("Gioi_Han_Thoi_Gian"));
//                bt.setUrlAnhMinhHoa(rs.getString("Url_Anh_Minh_Hoa"));
                ds.add(bt);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO_BaiTap.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ds;
    }
    
    public BaiTap getByCode(String ma){
        BaiTap bt = new BaiTap();
        String sql = "select * from bai_tap where Ma=?";
        try{
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, ma);
            ResultSet rs = pre.executeQuery();
            if(rs.next()){
                bt.setMa(rs.getString("Ma"));
                bt.setTen(rs.getString("Ten"));
                bt.setDeBai(rs.getString("De_Bai"));
//                bt.setTestViDu(rs.getString("Testcase_Vi_Du"));
                bt.setGioiHanThoiGian(rs.getFloat("Gioi_Han_Thoi_Gian"));
//                bt.setUrlAnhMinhHoa(rs.getString("Url_Anh_Minh_Hoa"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO_BaiTap.class.getName()).log(Level.SEVERE, null, ex);
        }
        return bt;
    }
    
    public String getInput(String ma){
        String sql = "select bai_tap.File_Input from bai_tap where Ma=?";
        try{
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, ma);
            ResultSet rs = pre.executeQuery();
            if(rs.next()){
                return rs.getString("File_Input");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO_BaiTap.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "";
    }
    
    public String getOutput(String ma){
        String sql = "select bai_tap.File_Output from bai_tap where Ma=?";
        try{
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, ma);
            ResultSet rs = pre.executeQuery();
            if(rs.next()){
                return rs.getString("File_Output");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO_BaiTap.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "";
    }

    public boolean save(BaiTap bt){
        String sql = "insert into bai_tap(Ma, Ten, De_Bai, Gioi_Han_Thoi_Gian, File_Input, File_Output) values(?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, bt.getMa());
            pre.setString(2, bt.getTen());
            pre.setString(3, bt.getDeBai());
            pre.setFloat(4, bt.getGioiHanThoiGian());
            pre.setString(5, bt.getFileInput());
            pre.setString(6, bt.getFileOutput());
            boolean rs = pre.execute();
        } catch (SQLException ex) {
            Logger.getLogger(DAO_Submission.class.getName()).log(Level.SEVERE, null, ex);
            return false;
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
