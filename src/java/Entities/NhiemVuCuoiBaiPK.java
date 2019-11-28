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
public class NhiemVuCuoiBaiPK implements Serializable {

    private String maBaiHoc;
    private int soThuTu;

    public NhiemVuCuoiBaiPK() {
    }

    public NhiemVuCuoiBaiPK(String maBaiHoc, int soThuTu) {
        this.maBaiHoc = maBaiHoc;
        this.soThuTu = soThuTu;
    }

    public String getMaBaiHoc() {
        return maBaiHoc;
    }

    public void setMaBaiHoc(String maBaiHoc) {
        this.maBaiHoc = maBaiHoc;
    }

    public int getSoThuTu() {
        return soThuTu;
    }

    public void setSoThuTu(int soThuTu) {
        this.soThuTu = soThuTu;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maBaiHoc != null ? maBaiHoc.hashCode() : 0);
        hash += (int) soThuTu;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NhiemVuCuoiBaiPK)) {
            return false;
        }
        NhiemVuCuoiBaiPK other = (NhiemVuCuoiBaiPK) object;
        if ((this.maBaiHoc == null && other.maBaiHoc != null) || (this.maBaiHoc != null && !this.maBaiHoc.equals(other.maBaiHoc))) {
            return false;
        }
        if (this.soThuTu != other.soThuTu) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entities.NhiemVuCuoiBaiPK[ maBaiHoc=" + maBaiHoc + ", soThuTu=" + soThuTu + " ]";
    }

}
