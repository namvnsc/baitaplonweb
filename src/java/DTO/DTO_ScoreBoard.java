/* @vannamsc */

package DTO;

import DAO.DAO_Contest;
import DAO.DAO_Problem;
import DAO.DAO_Register;
import Entities.contest.Contest;
import Entities.contest.Register;
import Entities.contest.ResultBoard;
import Entities.contest.ScoreBoard;
import java.util.ArrayList;


public class DTO_ScoreBoard {
    public ScoreBoard get(String maContest){
        ScoreBoard sb = new ScoreBoard();
        Contest contest = (new DAO_Contest()).getByCode(maContest);
//        contest.setListProblem((new DAO_Problem()).getAll(maContest));
        sb.setContest(contest);
        ArrayList<Register> lr = (new DAO_Register()).getAll(maContest);
        ArrayList<ResultBoard> lrb = new ArrayList<ResultBoard>();
        for(Register reg: lr){
            ResultBoard rb = (new DTO_ResultBoard()).getInTime(reg.getTaiKhoan().getUsername(), maContest);
            lrb.add(rb);
        }
        sb.setListRsB(lrb);
        sb.setRank();
        return sb;
    }
}
