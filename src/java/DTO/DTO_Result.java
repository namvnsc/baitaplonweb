/* @vannamsc */
package DTO;

import DAO.DAO_Contest;
import DAO.DAO_Problem;
import DAO.DAO_Submission;
import Entities.TaiKhoan;
import Entities.contest.Contest;
import Entities.contest.Problem;
import Entities.contest.Result;
import Entities.contest.Submission;
import java.util.ArrayList;

public class DTO_Result {

    public Result getInTime(String username, String maContest, int soThuTu) {
        Problem pro = (new DAO_Problem()).getBySoThuThu(maContest, soThuTu);
        ArrayList<Submission> l = (new DAO_Submission()).getAllForBaiTap(pro.getBaiTap().getMa(), username);
        Contest contest = (new DAO_Contest()).getByCode(maContest);
        long t1 = contest.getThoiDiemBatDau();
        long t2 = contest.getThoiDiemBatDau() + (long) (contest.getThoiGian() * 1000);
        Result rs = new Result();
        rs.setProblem(pro);
        rs.setTaiKhoan(new TaiKhoan(username, null));
        int countSubmitInTime = 0;
        for (Submission sub : l) {
            if (t1 <= sub.getThoiDiemSubmit().getTime() && sub.getThoiDiemSubmit().getTime() <= t2) {
                if (sub.getTrangThai().equals("Accept")) {
                    rs.setTrangThai("Accept");
                    break;
                }
                countSubmitInTime++;
            }
        }
        if (rs.getTrangThai() == null) {
            if (l.size() != 0) {
                rs.setTrangThai("Đang làm");
            } else {
                rs.setTrangThai("Chưa làm");
            }
        }
        return rs;
    }

    public Result get(String username, String maContest, int soThuTu) {
        Problem pro = (new DAO_Problem()).getBySoThuThu(maContest, soThuTu);
        ArrayList<Submission> l = (new DAO_Submission()).getAllForBaiTap(pro.getBaiTap().getMa(), username);
        Contest contest = (new DAO_Contest()).getByCode(maContest);
        long t1 = contest.getThoiDiemBatDau();
        long t2 = contest.getThoiDiemBatDau() + (long) (contest.getThoiGian() * 1000);
        Result rs = new Result();
        rs.setProblem(pro);
        rs.setTaiKhoan(new TaiKhoan(username, null));
        for (Submission sub : l) {
            if (sub.getTrangThai().equals("Accept")) {
                rs.setTrangThai("Accept");
                break;
            }
        }
        if (rs.getTrangThai() == null) {
            if (l.size() != 0) {
                rs.setTrangThai("Đang làm");
            } else {
                rs.setTrangThai("Chưa làm");
            }
        }
        return rs;
    }
}
