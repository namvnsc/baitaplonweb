/* @vannamsc */

package Jugde;

import DAO.DAO_BaiTap;
import DAO.DAO_Submission;
import Entities.contest.Submission;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ProcessJugde {
    private int id;
    private Submission sub;
    public ProcessJugde(int id){
        this.id=id;
        String path = (new File("")).getAbsolutePath();
        System.out.println(path);
    }
//    @Override
    public void run(){
        sub = (new DAO_Submission()).getById(id);
        String path = (new File("")).getAbsolutePath();
        File source = new File(path+"\\"+sub.getBaiTap().getMa()+id+".cpp");
        File input = new File(path+"\\"+sub.getBaiTap().getMa()+id+"Input.txt" );
        File output = new File(path+"\\"+sub.getBaiTap().getMa()+id+"Output.txt" );
        File error = new File(path+"\\Error.txt");
        File outOfSub = new File(path+"\\"+sub.getBaiTap().getMa()+id+"OutOfSub.txt");
        FileWriter outs, outi, outo;
        try {
            outs = new FileWriter(source);
            outs.write(sub.getCode());
            outi = new FileWriter(input);
            outi.write((new DAO_BaiTap()).getInput(sub.getBaiTap().getMa()));
            outo = new FileWriter(output);
            outo.write((new DAO_BaiTap()).getOutput(sub.getBaiTap().getMa()));
            outs.close();
            outi.close();
            outo.close();
//            System.out.println(sub.getCode());
        } catch (IOException ex) {
            Logger.getLogger(ProcessJugde.class.getName()).log(Level.SEVERE, null, ex);
        } 
        // chay
        Jugde j = new Jugde(sub.getBaiTap().getMa()+id, (int) (1000*sub.getBaiTap().getGioiHanThoiGian()));
        String trangThai = j.jugde();
        // update
        (new DAO_Submission()).update(id, trangThai);
        input.delete();
        output.delete();
        source.delete();
        outOfSub.delete();
        (new File(path+"\\"+sub.getBaiTap().getMa()+id+".exe")).delete();
//        while(!error.delete());
    }
}
