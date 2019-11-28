/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import org.apache.tomcat.util.codec.binary.Base64;

/**
 *
 * @author ABC
 */
public class ExecuteCodeService {

    public String executeC(String s) throws IOException {
        String re = "";

        byte[] byteArray = Base64.decodeBase64(s.getBytes());

        s = new String(byteArray);
        System.out.println(s);
        try {
            FileWriter fw = new FileWriter("C:\\Users\\Admin\\Desktop\\cert\\web\\code.c");
            fw.write(s);
            fw.close();
        } catch (Exception e) {
            System.out.println(e);
        }

        ProcessBuilder builder = new ProcessBuilder(
                "cmd.exe", "/c", "gcc C:\\Users\\Admin\\Desktop\\cert\\web\\code.c 2> C:\\Users\\Admin\\Desktop\\cert\\web\\log -o C:\\Users\\Admin\\Desktop\\cert\\web\\run.exe && C:\\Users\\Admin\\Desktop\\cert\\web\\run.exe > C:\\Users\\Admin\\Desktop\\cert\\web\\log ");
        builder.redirectErrorStream(true);
        Process p = builder.start();
        BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
        String line;
        while (true) {
            line = r.readLine();
            if (line == null) {
                break;
            }
            re += line + "\n";
        }
        p.destroy();
        return readFile();
    }

    private String readFile() {
        StringBuilder s = new StringBuilder();
        String fileName = "C:\\Users\\Admin\\Desktop\\cert\\web\\log";
        String line = null;

        try {
            FileReader fileReader
                    = new FileReader(fileName);
            BufferedReader bufferedReader
                    = new BufferedReader(fileReader);

            while ((line = bufferedReader.readLine()) != null) {
                s.append("\n" + line);
            }
            bufferedReader.close();
        } catch (FileNotFoundException ex) {
            System.out.println(
                    "Unable to open file '"
                    + fileName + "'");
        } catch (IOException ex) {
            System.out.println(
                    "Error reading file '"
                    + fileName + "'");
        }
        return s.toString().trim();
    }
}
