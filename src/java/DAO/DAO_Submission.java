/* @vannamsc */
package DAO;

import DAO.BaseDAO;
import Entities.TaiKhoan;
import Entities.contest.BaiTap;
import Entities.contest.Contest;
import Entities.contest.Submission;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DAO_Submission implements BaseDAO {

    public DAO_Submission() {
        super();
    }

    public ArrayList<Submission> getAll(String maContest, String username) {
        ArrayList<Submission> ds = new ArrayList<>();
        String sql = "select Submission.* from Submission, Contest, Problem, Bai_Tap "
                + "  where Contest.Ma=? and Submission.Username=? and "
                + "  Problem.Ma_Contest=Contest.Ma and Problem.Ma_Bai_Tap=Bai_Tap.Ma and "
                + "  Submission.Ma_Bai_Tap=Bai_Tap.Ma";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, maContest);
            pre.setString(2, username);
            ResultSet rs = pre.executeQuery();
            TaiKhoan tk = new TaiKhoan(username, null);
            while (rs.next()) {
                Submission s = new Submission();
                s.setId(rs.getInt("ID"));
                s.setTaiKhoan(tk);
                s.setBaiTap((new DAO_BaiTap()).getByCode(rs.getString("Ma_Bai_Tap")));
                s.setCode(rs.getString("Code"));
                s.setTrangThai(rs.getString("Trang_Thai"));
                Date t = new Date();
                t.setTime(rs.getTimestamp("Thoi_Diem_Submit").getTime() + 7 * 60 * 60 * 1000);
                s.setThoiDiemSubmit(t);
                ds.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO_Submission.class.getName()).log(Level.SEVERE, null, ex);
        }
        Collections.sort(ds, (Submission s1, Submission s2) -> (int) (s1.getThoiDiemSubmit().getTime() - s2.getThoiDiemSubmit().getTime()));
        return ds;
    }

    public Submission getById(int id) {
        Submission s = new Submission();
        String sql = "select Submission.* from Submission where ID=?";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setInt(1, id);
            ResultSet rs = pre.executeQuery();
            if (rs.next()) {
                s.setId(rs.getInt("ID"));
                TaiKhoan tk = new TaiKhoan(rs.getString("Username"), null);
                s.setTaiKhoan(tk);
                s.setBaiTap((new DAO_BaiTap()).getByCode(rs.getString("Ma_Bai_Tap")));
                s.setCode(rs.getString("Code"));
                s.setTrangThai(rs.getString("Trang_Thai"));
                Date t = new Date();
                t.setTime(rs.getTimestamp("Thoi_Diem_Submit").getTime() + 7 * 60 * 60 * 1000);
                s.setThoiDiemSubmit(t);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO_Submission.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

    public int save(Submission sub) {
        String sql = "insert into Submission(Username, Ma_Bai_Tap, Code, Trang_Thai, Thoi_Diem_Submit) "
                + "values(?, ?, ?, ?, ?)";
        java.sql.Date date = new java.sql.Date(sub.getThoiDiemSubmit().getTime());
        System.out.println(date);
        java.sql.Time time = new Time(sub.getThoiDiemSubmit().getTime() - date.getTime());
        System.out.println(time);
        Timestamp t = new Timestamp(sub.getThoiDiemSubmit().getTime());
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, sub.getTaiKhoan().getUsername());
            pre.setString(2, sub.getBaiTap().getMa());
            pre.setString(3, sub.getCode());
            pre.setString(4, sub.getTrangThai());
            pre.setTimestamp(5, t);
//            pre.setDate(5, date) ;
            boolean rs = pre.execute();
        } catch (SQLException ex) {
            Logger.getLogger(DAO_Submission.class.getName()).log(Level.SEVERE, null, ex);
        }
        return getID(sub.getTaiKhoan().getUsername(), sub.getBaiTap().getMa());
    }

    public int getID(String un, String ma) {
        String sql = "select max(ID) as idMax from Submission where Username=? and Ma_Bai_Tap=?";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setString(1, un);
            pre.setString(2, ma);
            ResultSet rs = pre.executeQuery();
            if (rs.next()) {
                return rs.getInt("idMax");
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO_Submission.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }

    public void update(int id, String trangThai) {
        String sql = "update Submission set Trang_Thai = ? where ID = ?";
        try {
            PreparedStatement pre = con.prepareStatement(sql);
            pre.setInt(2, id);
            pre.setString(1, trangThai);
            pre.execute();
        } catch (SQLException ex) {
            Logger.getLogger(DAO_Submission.class.getName()).log(Level.SEVERE, null, ex);
        }
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
