/* @vannamsc */

package Entities.contest;

import Entities.TaiKhoan;
import java.util.Date;


public class Submission {
    private long id;
    private TaiKhoan account;
    private BaiTap baiTap;
    private String code;
    private String trangThai;
    private Date thoiDiemSubmit;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public TaiKhoan getTaiKhoan() {
        return account;
    }

    public void setTaiKhoan(TaiKhoan acc) {
        this.account = acc;
    }

    public BaiTap getBaiTap() {
        return baiTap;
    }

    public void setBaiTap(BaiTap baiTap) {
        this.baiTap = baiTap;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

    public Date getThoiDiemSubmit() {
        return thoiDiemSubmit;
    }

    public void setThoiDiemSubmit(Date thoiDiemSubmit) {
        this.thoiDiemSubmit = thoiDiemSubmit;
    }

    
}
