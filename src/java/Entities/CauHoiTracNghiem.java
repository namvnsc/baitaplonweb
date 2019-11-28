/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.io.Serializable;
import java.util.List;

/**
 *
 * @author ABC
 */
public class CauHoiTracNghiem implements Serializable {

    private static final long serialVersionUID = 1L;
    private String ma;
    private String cauHoi;
    private String a;
    private String b;
    private String c;
    private String d;
    private String dapAn;
    private List<NhiemVuCuoiBai> nhiemVuCuoiBaiList;

    public CauHoiTracNghiem() {
    }

    public CauHoiTracNghiem(String ma) {
        this.ma = ma;
    }

    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

    public String getCauHoi() {
        return cauHoi;
    }

    public void setCauHoi(String cauHoi) {
        this.cauHoi = cauHoi;
    }

    public String getA() {
        return a;
    }

    public void setA(String a) {
        this.a = a;
    }

    public String getB() {
        return b;
    }

    public void setB(String b) {
        this.b = b;
    }

    public String getC() {
        return c;
    }

    public void setC(String c) {
        this.c = c;
    }

    public String getD() {
        return d;
    }

    public void setD(String d) {
        this.d = d;
    }

    public String getDapAn() {
        return dapAn;
    }

    public void setDapAn(String dapAn) {
        this.dapAn = dapAn;
    }

    public List<NhiemVuCuoiBai> getNhiemVuCuoiBaiList() {
        return nhiemVuCuoiBaiList;
    }

    public void setNhiemVuCuoiBaiList(List<NhiemVuCuoiBai> nhiemVuCuoiBaiList) {
        this.nhiemVuCuoiBaiList = nhiemVuCuoiBaiList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (ma != null ? ma.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CauHoiTracNghiem)) {
            return false;
        }
        CauHoiTracNghiem other = (CauHoiTracNghiem) object;
        if ((this.ma == null && other.ma != null) || (this.ma != null && !this.ma.equals(other.ma))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entities.CauHoiTracNghiem[ ma=" + ma + " ]";
    }
    
}
