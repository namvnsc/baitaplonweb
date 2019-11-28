/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entities.NoiDung;
import java.util.List;

/**
 *
 * @author ABC
 */
public interface NoiDungDAO extends BaseDAO<NoiDung>{
    List<NoiDung> findByMaPhan(String maPhan);
    
}
