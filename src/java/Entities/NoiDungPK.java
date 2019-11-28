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
public class NoiDungPK implements Serializable {
    private String maPhan;
    private int soThuTu;

    public NoiDungPK() {
    }

    public NoiDungPK(String maPhan, int soThuTu) {
        this.maPhan = maPhan;
        this.soThuTu = soThuTu;
    }

    public String getMaPhan() {
        return maPhan;
    }

    public void setMaPhan(String maPhan) {
        this.maPhan = maPhan;
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
        hash += (maPhan != null ? maPhan.hashCode() : 0);
        hash += (int) soThuTu;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NoiDungPK)) {
            return false;
        }
        NoiDungPK other = (NoiDungPK) object;
        if ((this.maPhan == null && other.maPhan != null) || (this.maPhan != null && !this.maPhan.equals(other.maPhan))) {
            return false;
        }
        if (this.soThuTu != other.soThuTu) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entities.NoiDungPK[ maPhan=" + maPhan + ", soThuTu=" + soThuTu + " ]";
    }
    
}
