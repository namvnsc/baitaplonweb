/* @vannamsc */

package Entities.contest;

import java.util.ArrayList;
import java.util.Date;


public class Contest {
    private String ma;
    private String ten;
    private long thoiDiemBatDau;
    private float thoiGian;
    private String trangThai;
    private ArrayList<Problem> listProblem;

    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

    public long getThoiDiemBatDau() {
        return thoiDiemBatDau;
    }

    public void setThoiDiemBatDau(long thoiDiemBatDau) {
        this.thoiDiemBatDau = thoiDiemBatDau;
    }

    public float getThoiGian() {
        return thoiGian;
    }

    public void setThoiGian(float thoiGian) {
        this.thoiGian = thoiGian;
    }

    public ArrayList<Problem> getListProblem() {
        return listProblem;
    }

    public void setListProblem(ArrayList<Problem> listProblem) {
        this.listProblem = listProblem;
    }
    
    public void setTrangThai(){
        if((new Date()).getTime()-thoiDiemBatDau<0) this.trangThai="Chưa diễn ra";
        else{
            if((new Date()).getTime()-thoiDiemBatDau-(long)(thoiGian*60*60*1000)>0) this.trangThai="Đã kết thúc";
            else{
                this.trangThai="Đang diễn ra";
            }
        }
    }

    public String getTrangThai() {
        return trangThai;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

}
