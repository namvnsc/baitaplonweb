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
public class NhiemVuCuoiBai implements Serializable {

    private static final long serialVersionUID = 1L;
    protected NhiemVuCuoiBaiPK nhiemVuCuoiBaiPK;
    private String loai;
    private BaiHoc baiHoc;
    private BaiTap maBaiTap;
    private CauHoiTracNghiem maCauHoi;

    public NhiemVuCuoiBai() {
    }

    public NhiemVuCuoiBai(NhiemVuCuoiBaiPK nhiemVuCuoiBaiPK) {
        this.nhiemVuCuoiBaiPK = nhiemVuCuoiBaiPK;
    }

    public NhiemVuCuoiBai(String maBaiHoc, int soThuTu) {
        this.nhiemVuCuoiBaiPK = new NhiemVuCuoiBaiPK(maBaiHoc, soThuTu);
    }

    public NhiemVuCuoiBaiPK getNhiemVuCuoiBaiPK() {
        return nhiemVuCuoiBaiPK;
    }

    public void setNhiemVuCuoiBaiPK(NhiemVuCuoiBaiPK nhiemVuCuoiBaiPK) {
        this.nhiemVuCuoiBaiPK = nhiemVuCuoiBaiPK;
    }

    public String getLoai() {
        return loai;
    }

    public void setLoai(String loai) {
        this.loai = loai;
    }

    public BaiHoc getBaiHoc() {
        return baiHoc;
    }

    public void setBaiHoc(BaiHoc baiHoc) {
        this.baiHoc = baiHoc;
    }

    public BaiTap getMaBaiTap() {
        return maBaiTap;
    }

    public void setMaBaiTap(BaiTap maBaiTap) {
        this.maBaiTap = maBaiTap;
    }

    public CauHoiTracNghiem getMaCauHoi() {
        return maCauHoi;
    }

    public void setMaCauHoi(CauHoiTracNghiem maCauHoi) {
        this.maCauHoi = maCauHoi;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (nhiemVuCuoiBaiPK != null ? nhiemVuCuoiBaiPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof NhiemVuCuoiBai)) {
            return false;
        }
        NhiemVuCuoiBai other = (NhiemVuCuoiBai) object;
        if ((this.nhiemVuCuoiBaiPK == null && other.nhiemVuCuoiBaiPK != null) || (this.nhiemVuCuoiBaiPK != null && !this.nhiemVuCuoiBaiPK.equals(other.nhiemVuCuoiBaiPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entities.NhiemVuCuoiBai[ nhiemVuCuoiBaiPK=" + nhiemVuCuoiBaiPK + " ]";
    }
    
}
