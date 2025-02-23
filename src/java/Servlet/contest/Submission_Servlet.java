package Servlet.contest;

import DAO.DAO_Submission;
import Entities.TaiKhoan;
import Entities.contest.BaiTap;
import Entities.contest.Submission;
import com.google.gson.Gson;
import com.google.gson.stream.JsonReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class Submission_Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/jsons");
        response.setCharacterEncoding("UTF-8");
        ArrayList<Submission> list = (new DAO_Submission()).getAll(request.getParameter("MaContest"), request.getParameter("Username"));
        String str = (new Gson()).toJson(list);
        PrintWriter out = response.getWriter();
        out.print(str);
        out.flush();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/jsons");
        response.setCharacterEncoding("UTF-8");
        String us = "", ma = "", code ="", thoiDiemSubmit="";
        Date t = null;
        JsonReader reader = new JsonReader(request.getReader());
        reader.beginObject();
        reader.nextName();
        us = reader.nextString();reader.nextName();
        ma = reader.nextString();reader.nextName();
        code = reader.nextString();reader.nextName();
        thoiDiemSubmit = reader.nextString().replace('T', ' ').replace('Z', ' ').trim();
        reader.endObject();
        reader.close();
        response.getWriter().print("{\"ThongBao\": \"submit thành công\"}");
        Submission sub = new Submission();
        sub.setTaiKhoan(new TaiKhoan(us, null));
        BaiTap baiTap = new BaiTap();
        baiTap.setMa(ma);
        sub.setBaiTap(baiTap);
        sub.setCode(code);
        try {
            t = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(thoiDiemSubmit);
            sub.setThoiDiemSubmit(t.getTime()+7*60*60*1000);
        } catch (ParseException ex) {
            Logger.getLogger(Submission_Servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        sub.setTrangThai("Đang chạy");
        int id = (new DAO_Submission()).save(sub);
        System.out.println(id);
//        // cham bai
        (new Jugde.ProcessJugde(id)).run();
    }
    

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
