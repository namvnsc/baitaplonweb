/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entities.Phan;
import java.util.List;

/**
 *
 * @author ABC
 */
public interface PhanDAO extends BaseDAO<Phan>{
    List<Phan> findByMaBaiHoc(String maBaiHoc);
}
