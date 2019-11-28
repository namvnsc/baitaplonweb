/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

import java.io.Serializable;

/**
 *
 * @author ABC
 */
public class NoiDung implements Serializable {

    private static final long serialVersionUID = 1L;
    private String ma;
    private Integer soThuTu;
    private String loai;
    private String noiDung;
    private String moTa;
    private String maPhan;

    public NoiDung() {
    }

    public NoiDung(String ma) {
        this.ma = ma;
    }

    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

    public Integer getSoThuTu() {
        return soThuTu;
    }

    public void setSoThuTu(Integer soThuTu) {
        this.soThuTu = soThuTu;
    }

    public String getLoai() {
        return loai;
    }

    public void setLoai(String loai) {
        this.loai = loai;
    }

    public String getNoiDung() {
        return noiDung;
    }

    public void setNoiDung(String noiDung) {
        this.noiDung = noiDung;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public String getMaPhan() {
        return maPhan;
    }

    public void setMaPhan(String maPhan) {
        this.maPhan = maPhan;
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
        if (!(object instanceof NoiDung)) {
            return false;
        }
        NoiDung other = (NoiDung) object;
        if ((this.ma == null && other.ma != null) || (this.ma != null && !this.ma.equals(other.ma))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "NoiDung{" + "ma=" + ma + ", soThuTu=" + soThuTu + ", loai=" + loai + ", noiDung=" + noiDung + ", moTa=" + moTa + ", maPhan=" + maPhan + '}';
    }
    
    
}
