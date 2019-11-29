/* @vannamsc */
package Entities.contest;

import Entities.TaiKhoan;
import java.util.ArrayList;

public class ResultBoard {

    private TaiKhoan taiKhoan;
    private Contest contest;
    private int rank;
    private int score;
    private ArrayList<Result> listRs;

    public ResultBoard() {
//        this.score=0;
    }

    
    public TaiKhoan getTaiKhoan() {
        return taiKhoan;
    }

    public void setTaiKhoan(TaiKhoan taiKhoan) {
        this.taiKhoan = taiKhoan;
    }

    public Contest getContest() {
        return contest;
    }

    public void setContest(Contest contest) {
        this.contest = contest;
    }

    public ArrayList<Result> getListRs() {
        return listRs;
    }

    public void setListRs(ArrayList<Result> listRs) {
        this.listRs = listRs;
    }

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    public void setScore() {
        int c = 0;
        for (Result rs : listRs) {
            if (rs.getTrangThai().equals("Accept")) {
                c += rs.getProblem().getDiem();
            }
        }
        this.score = c;
    }

    public int getScore() {
        return this.score;
    }

}
