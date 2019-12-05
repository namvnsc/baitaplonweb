/* @vannamsc */
package x;

import DAO.DAO_Contest;
import DAO.DAO_Register;
import DAO.KhoaHocDAO;
import DAO.TaiKhoanDAOImpl;
import DAO.DAO_Submission;
import DTO.DTO_ScoreBoard;
import Entities.KhoaHoc;
import Entities.TaiKhoan;
import Entities.contest.BaiTap;
import Entities.contest.Contest;
import Entities.contest.ResultBoard;
import Entities.contest.ScoreBoard;
import com.google.gson.*;
import Entities.contest.Submission;
import Jugde.ProcessJugde;
import Servlet.LoginServlet;
import Servlet.SignUpServlet;
import Servlet.contest.Submission_Servlet;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;

public class tmp {

    public static void main(String[] args) {
        (new TaiKhoanDAOImpl()).checkAccount(new TaiKhoan("a", "*"));
//        ScoreBoard sb = (new DTO_ScoreBoard()).get("MD");
//        if(!(new DAO_Register()).checkRegister("a", "SPRING")){
//            (new DAO_Register()).save("a", "SPRING");
//        }
//        (new ProcessJugde(51)).run();
//        ArrayList<Contest> list = (new DAO_Contest()).getAll();
//        System.out.println(list.size());
//        Jugde j = new Jugde("tmp", 1000);
//        System.out.println(j.jugde());
//        if(j.clear()) System.out.println("cleared");
//        Date t = new Date();
//        try {
//            String s = "2019-11-28T02:02:04.953Z".replace('T', ' ').replace('Z', ' ');
//            t = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(s);
//            System.out.println(t);
////            "2019-11-28T01:01:04.953Z*"
//        } catch (ParseException ex) {
//            Logger.getLogger(Submission_Servlet.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        Submission sub     = new Submission();
//        sub.setTaiKhoan(new TaiKhoan("a", null));
//        BaiTap baiTap = new BaiTap();
//        baiTap.setMa("b1");
//        sub.setBaiTap(baiTap);
//        sub.setCode("00");
//        sub.setTrangThai("Đang chạy");
//        sub.setThoiDiemSubmit(new Date(t.getTime()));
////        System.out.println(us+ma+code+t+"**");
//        int id = (new DAO_Submission()).save(sub);
//        System.out.println(id);
//        System.out.println((new Jugde.Jugde("b1", 29, 2000)));
//        (new ProcessJugde(42)).run();
    }
}
