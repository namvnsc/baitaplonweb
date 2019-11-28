/* @vannamsc */

package Entities.contest;

import Entities.TaiKhoan;


public class Comment {
    private long id;
    private Contest contest;
    private TaiKhoan account;
    private String noiDungBinhLuan;
    private int soThuTu;

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
        return account;
    }

    public void setTaiKhoan(TaiKhoan account) {
        this.account = account;
    }

    public String getNoiDungBinhLuan() {
        return noiDungBinhLuan;
    }

    public void setNoiDungBinhLuan(String noiDungBinhLuan) {
        this.noiDungBinhLuan = noiDungBinhLuan;
    }

    public int getSoThuTu() {
        return soThuTu;
    }

    public void setSoThuTu(int soThuTu) {
        this.soThuTu = soThuTu;
    }
    
    
}
