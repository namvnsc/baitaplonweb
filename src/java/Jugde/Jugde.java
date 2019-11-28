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
    private File srcFile;
    private File inputFile;
    private File outputFile;
    private File ansFile;
    private File errorFile;
    private int timeLimit;

    public Jugde(String name, int id, int timeLimit) {
        String path = "C:\\Users\\Admin\\Documents\\NetBeansProjects\\WebApplication1\\src\\java\\Jugde\\";
        srcFile = new File(path + "Source\\" + name+id);
        inputFile = new File(path + "Input\\" + name + "Input.txt");
        outputFile = new File(path + "Output\\" + name+id + "Output.txt");
        ansFile = new File(path + "Ans\\" + name + "Ans.txt");
        errorFile = new File(path + "Error\\" + name+id + "Error.txt");
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
        process.command("cmd.exe", "/c", "g++ " + srcFile + ".cpp" + " -o " + srcFile);
        try {
            process.redirectError(errorFile);
            java.lang.Process pro = process.start();
            while (pro.isAlive()) {
            }
            FileReader loi = new FileReader(errorFile);
            BufferedReader out = new BufferedReader(loi);
            String line = out.readLine();
            if (line != null) {
//                out.close();
//                loi.close();
                return "Compiler Error";
            }
//            out.close();
//            loi.close();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(Jugde.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(Jugde.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "Done";
    }

    private synchronized String _run() {
        process.command("cmd.exe", "/c", srcFile + ".exe");
        process.redirectInput(inputFile);
        process.redirectOutput(outputFile);
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
            FileReader out = new FileReader(outputFile);
            FileReader ans = new FileReader(ansFile);
            BufferedReader rDapAn = new BufferedReader(ans);
            BufferedReader rDauRa = new BufferedReader(out);
            String line = "s";
            String line1 = "s";
            while (line != null || line1 != null) {
                line = rDapAn.readLine();
                line1 = rDauRa.readLine();
                if (line != null && line1 != null) {
                    if (!line.equals(line1)) {
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
        } catch (Exception e) {
            return "ErrorE";
        }
    }

    public boolean clear() {
        srcFile.deleteOnExit();
        outputFile.deleteOnExit();
        errorFile.deleteOnExit();
        if (srcFile.delete() && outputFile.delete() && errorFile.delete()) {
            return true;
        }
        return false;
    }

}
