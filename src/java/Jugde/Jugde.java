/* @vannamsc */
package Jugde;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Jugde {

    private ProcessBuilder process;
    private String name;
    private File srcFile;
    private File inputFile;
    private File outputFile;
    private File outOfSub;
    private File errorFile;
    private int timeLimit;

    public Jugde(String name, int timeLimit) {
        this.name = (new File("")).getAbsolutePath()+"\\"+name;
        inputFile = new File(name + "Input.txt");
        outputFile = new File(name + "Output.txt");
        outOfSub = new File(name + "OutOfSub.txt");
        errorFile = new File((new File("")).getAbsolutePath() + "\\Error.txt");
        this.timeLimit = timeLimit;
        process = new ProcessBuilder();
    }

    public String jugde() {
        if (_compile().equals("Compiler Error")) {
            return "Compiler Error";
        }
        String tmp = _run();
        if (!tmp.equals("Done")) {
            return tmp;
        }
        return _check();
    }

    private String _compile() {
        process.command("cmd.exe", "/c", "g++ " +name+".cpp" + " -o " + name);
        try {
            process.redirectError(errorFile);
            java.lang.Process pro = process.start();
            while (pro.isAlive()) {
            }
            FileReader loi = new FileReader(errorFile);
            BufferedReader out = new BufferedReader(loi);
            String line = out.readLine();
            if (line != null) {
                out.close();
                loi.close();
                return "Compiler Error";
            }
            out.close();
            loi.close();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(Jugde.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(Jugde.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "Done";
    }

    private synchronized String _run() {
        process.command("cmd.exe", "/c", name + ".exe");
        process.redirectInput(inputFile);
        process.redirectOutput(outOfSub);
        process.redirectError(errorFile);
        try {
            Thread th = new Thread();
            java.lang.Process pro = process.start();
            th.sleep(timeLimit);
            if (pro.isAlive()) {
                pro.destroy();
                return "Time limit exeeded";
            }
        } catch (InterruptedException ex) {
            Logger.getLogger(Jugde.class.getName()).log(Level.SEVERE, null, ex);
            return "ErrorINT";
        } catch (IOException ex) {
            Logger.getLogger(Jugde.class.getName()).log(Level.SEVERE, null, ex);
            return "ErrorIOE";
        }
        return "Done";
    }

    private String _check() {
        try {
            FileReader out = new FileReader(outOfSub);
            FileReader ans = new FileReader(outputFile);
            BufferedReader rDapAn = new BufferedReader(ans);
            BufferedReader rDauRa = new BufferedReader(out);
            String line = "s";
            String line1 = "s";
            while (line != null || line1 != null) {
                line = rDapAn.readLine();
                line1 = rDauRa.readLine();
                if (line != null && line1 != null) {
                    if (!line.trim().equals(line1.trim())) {
                        rDapAn.close();
                        rDapAn.close();
                        out.close();
                        ans.close();
                        return "Wrong";
                    }
                } else {
                    if (line == null && line1 == null) {
                        rDapAn.close();
                        rDapAn.close();
                        out.close();
                        ans.close();
                        return "Accept";
                    } else {
                        rDapAn.close();
                        rDapAn.close();
                        out.close();
                        ans.close();
                        return "Wrong";
                    }
                }
            }
            rDapAn.close();
            rDapAn.close();
            out.close();
            ans.close();
            return "Accept";
        } catch (IOException ex) {
            Logger.getLogger(Jugde.class.getName()).log(Level.SEVERE, null, ex);
            return "ErrorIOE";
        } 
    }
}
