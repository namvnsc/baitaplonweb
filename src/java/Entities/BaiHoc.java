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
public class BaiHoc implements Serializable {

    private static final long serialVersionUID = 1L;
    private String ma;

    private String ten;
    private Integer soThuTu;
    private List<Phan> phanList;
    private KhoaHoc maKhoaHoc;
    private List<NhiemVuCuoiBai> nhiemVuCuoiBaiList;

    public BaiHoc() {
    }

    public BaiHoc(String ma) {
        this.ma = ma;
    }

    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public Integer getSoThuTu() {
        return soThuTu;
    }

    public void setSoThuTu(Integer soThuTu) {
        this.soThuTu = soThuTu;
    }

    public List<Phan> getPhanList() {
        return phanList;
    }

    public void setPhanList(List<Phan> phanList) {
        this.phanList = phanList;
    }

    public KhoaHoc getMaKhoaHoc() {
        return maKhoaHoc;
    }

    public void setMaKhoaHoc(KhoaHoc maKhoaHoc) {
        this.maKhoaHoc = maKhoaHoc;
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
        if (!(object instanceof BaiHoc)) {
            return false;
        }
        BaiHoc other = (BaiHoc) object;
        if ((this.ma == null && other.ma != null) || (this.ma != null && !this.ma.equals(other.ma))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "BaiHoc{" + "ma=" + ma + ", ten=" + ten + ", soThuTu=" + soThuTu + ", phanList=" + phanList + ", maKhoaHoc=" + maKhoaHoc + ", nhiemVuCuoiBaiList=" + nhiemVuCuoiBaiList + '}';
    }


    
}
