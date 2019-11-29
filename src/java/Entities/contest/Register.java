/* @vannamsc */

package Entities.contest;
import Entities.TaiKhoan;
import java.util.Date;


public class Register {
    private long id;
    private Contest contest;
    private TaiKhoan acc;
    private Date thoiDiemDangKy;
    private int diem;
    private int xepHang;
    
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Contest getContest() {
        return contest;
    }

    public void setContest(Contest contest) {
        this.contest = contest;
    }

    public TaiKhoan getTaiKhoan() {
        return acc;
    }

    public void setTaiKhoan(TaiKhoan acc) {
        this.acc = acc;
    }

    public Date getThoiDiemDangKy() {
        return thoiDiemDangKy;
    }

    public void setThoiDiemDangKy(Date thoiDiemDangKy) {
        this.thoiDiemDangKy = thoiDiemDangKy;
    }

    public int getDiem() {
        return diem;
    }

    public void setDiem(int diem) {
        this.diem = diem;
    }

    public int getXepHang() {
        return xepHang;
    }

    public void setXepHang(int xepHang) {
        this.xepHang = xepHang;
    }
    
}
