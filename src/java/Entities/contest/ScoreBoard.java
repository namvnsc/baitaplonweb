/* @vannamsc */

package Entities.contest;

import java.util.ArrayList;
import java.util.Collections;


public class ScoreBoard {
    private Contest contest;
    private ArrayList<ResultBoard> listRsB;

    public Contest getContest() {
        return contest;
    }

    public void setContest(Contest contest) {
        this.contest = contest;
    }

    public ArrayList<ResultBoard> getListRsB() {
        return listRsB;
    }

    public void setListRsB(ArrayList<ResultBoard> listRsB) {
        this.listRsB = listRsB;
    }
    
    private  void sx(){
        for(ResultBoard rsb: listRsB) rsb.setScore();
        Collections.sort(listRsB, (ResultBoard r1, ResultBoard r2)->-(r1.getScore()-r2.getScore()));
    }
    
    public void setRank(){
        sx();
        int rank = 1;
        listRsB.get(0).setRank(rank);
        for(int i = 1; i < listRsB.size(); i++){
            if(listRsB.get(i).getScore()!=listRsB.get(i-1).getScore()){
                rank++;
            }
            listRsB.get(i).setRank(rank);
        }
    }
}
