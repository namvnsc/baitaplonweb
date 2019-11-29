/* @vannamsc */

package DTO;

import DAO.DAO_Contest;
import DAO.DAO_Problem;
import Entities.TaiKhoan;
import Entities.contest.Contest;
import Entities.contest.Problem;
import Entities.contest.Result;
import Entities.contest.ResultBoard;
import java.util.ArrayList;


public class DTO_ResultBoard {
    
    public ResultBoard getInTime(String username, String maContest){
        ResultBoard rsb = new ResultBoard();
        rsb.setTaiKhoan(new TaiKhoan(username, null));
        Contest contest = (new DAO_Contest()).getByCode(maContest);
        contest.setListProblem((new DAO_Problem()).getAll(maContest));
        rsb.setContest(contest);
        ArrayList<Result> lrs = new ArrayList();
        for(Problem pro: contest.getListProblem()){
            Result rs = (new DTO_Result()).getInTime(username, maContest, pro.getSoThuTu());
            lrs.add(rs);
        }
        rsb.setListRs(lrs);
        rsb.setScore();
        return rsb;
    }
    public ResultBoard get(String username, String maContest){
        ResultBoard rsb = new ResultBoard();
        rsb.setTaiKhoan(new TaiKhoan(username, null));
        Contest contest = (new DAO_Contest()).getByCode(maContest);
        contest.setListProblem((new DAO_Problem()).getAll(maContest));
        rsb.setContest(contest);
        ArrayList<Result> lrs = new ArrayList();
        for(Problem pro: contest.getListProblem()){
            Result rs = (new DTO_Result()).get(username, maContest, pro.getSoThuTu());
            lrs.add(rs);
        }
        rsb.setListRs(lrs);
        rsb.setScore();
        return rsb;
    }
}
