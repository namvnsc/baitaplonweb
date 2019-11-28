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
public class KhoaHoc implements Serializable {

    private static final long serialVersionUID = 1L;
    private String ma;
    private String ten;
    private String moTa;
    private Integer soThuTu;
    private String urlAnh;
    private List<BaiHoc> baiHocList;
    private String url;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    

    public KhoaHoc() {
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

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public Integer getSoThuTu() {
        return soThuTu;
    }

    public void setSoThuTu(Integer soThuTu) {
        this.soThuTu = soThuTu;
    }

    public String getUrlAnh() {
        return urlAnh;
    }

    public void setUrlAnh(String urlAnh) {
        this.urlAnh = urlAnh;
    }

    public List<BaiHoc> getBaiHocList() {
        return baiHocList;
    }

    public void setBaiHocList(List<BaiHoc> baiHocList) {
        this.baiHocList = baiHocList;
    }
    

    public KhoaHoc(String ten, String mota, String url) {
        this.ten = ten;
        this.moTa = mota;
        this.urlAnh = url;
    }

    @Override
    public String toString() {
        return "KhoaHoc{" + "ma=" + ma + ", ten=" + ten + ", moTa=" + moTa + ", soThuTu=" + soThuTu + ", urlAnh=" + urlAnh + ", baiHocList=" + baiHocList + ", url=" + url + '}';
    }
    
}
