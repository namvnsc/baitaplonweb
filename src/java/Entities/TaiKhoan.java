/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entities;

/**
 *
 * @author nguyenthang
 */
public class TaiKhoan {
    private String username;
    private String password;
    private String hoten;
    private String email;
    private String sdt;
    private String avatar;
    private String role;
    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public TaiKhoan(String username, String password, String hoten, String email, String sdt, String avatar, String role) {
        this.username = username;
        this.password = password;
        this.hoten = hoten;
        this.email = email;
        this.sdt = sdt;
        this.avatar = avatar;
        this.role = role;
    }

    public TaiKhoan(String username, String password, String hoten, String email, String sdt) {
        this.username = username;
        this.password = password;
        this.hoten = hoten;
        this.email = email;
        this.sdt = sdt;
    }

    public TaiKhoan(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getHoten() {
        return hoten;
    }

    public void setHoten(String hoten) {
        this.hoten = hoten;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
    
}
