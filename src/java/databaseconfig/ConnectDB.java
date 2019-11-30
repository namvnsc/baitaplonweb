/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package databaseconfig;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author os_hoangpn
 */
public class ConnectDB {

    private static Connection connect = null;

    /**
     * Check Driver connect to MySQL
     */
    public static Connection openConnect(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            try {
                throw new Exception("Invalid Driver!!Please check this drver....");
            } catch (Exception ex1) {
                Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
        if (connect == null) {
            String url = "jdbc:mysql://localhost:3306/web";
            try {
                connect = DriverManager.getConnection(url, "root", "123456");
            } catch (SQLException e) {
                try {
                    throw new Exception(e.getMessage() + "Connect failed to database ....");
                } catch (Exception ex) {
                    Logger.getLogger(ConnectDB.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return connect;
    }

    public static void main(String[] args){
        System.out.println(ConnectDB.openConnect());
    }
}
