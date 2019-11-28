/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import databaseconfig.ConnectDB;
import java.sql.Connection;
import java.util.List;

/**
 *
 * @author ABC
 */
public interface BaseDAO<T> {
    Connection con = ConnectDB.openConnect();
    List<T> findAll();

    T find(String ma);

    T save(T t);

    T update(T t);

    T delete(T t);

}
