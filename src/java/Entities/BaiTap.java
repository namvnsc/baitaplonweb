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
public class BaiTap implements Serializable {

    private static final long serialVersionUID = 1L;
    private String ma;
    private String ten;
    private String deBai;
    private String testcaseViDu;
    private String fileInput;
    private String fileOutput;
    private Float gioiHanThoiGian;
    private String urlAnh;
    private List<NhiemVuCuoiBai> nhiemVuCuoiBaiList;

    public BaiTap() {
    }

    public BaiTap(String ma) {
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

    public String getDeBai() {
        return deBai;
    }

    public void setDeBai(String deBai) {
        this.deBai = deBai;
    }

    public String getTestcaseViDu() {
        return testcaseViDu;
    }

    public void setTestcaseViDu(String testcaseViDu) {
        this.testcaseViDu = testcaseViDu;
    }

    public String getFileInput() {
        return fileInput;
    }

    public void setFileInput(String fileInput) {
        this.fileInput = fileInput;
    }

    public String getFileOutput() {
        return fileOutput;
    }

    public void setFileOutput(String fileOutput) {
        this.fileOutput = fileOutput;
    }

    public Float getGioiHanThoiGian() {
        return gioiHanThoiGian;
    }

    public void setGioiHanThoiGian(Float gioiHanThoiGian) {
        this.gioiHanThoiGian = gioiHanThoiGian;
    }

    public String getUrlAnh() {
        return urlAnh;
    }

    public void setUrlAnh(String urlAnh) {
        this.urlAnh = urlAnh;
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
        if (!(object instanceof BaiTap)) {
            return false;
        }
        BaiTap other = (BaiTap) object;
        if ((this.ma == null && other.ma != null) || (this.ma != null && !this.ma.equals(other.ma))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entities.BaiTap[ ma=" + ma + " ]";
    }
    
}
