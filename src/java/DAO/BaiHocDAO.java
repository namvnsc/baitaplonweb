/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Entities.BaiHoc;
import java.util.List;

/**
 *
 * @author ABC
 */
public interface BaiHocDAO extends BaseDAO<BaiHoc>{
    List<BaiHoc> findByMaKhoaHoc(String maKhoaHoc);
}
