
package Servlet.contest;

import DAO.DAO_Contest;
import DAO.DAO_Register;
import Entities.contest.BaiTap;
import Entities.contest.Contest;
import Entities.contest.Problem;
import Entities.contest.ResultBoard;
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

public class Contest_Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/jsons");
        response.setCharacterEncoding("UTF-8");
        String ma = request.getParameter("maContest");

        String username = (String) request.getParameter("username");
        Contest ct = (new DAO_Contest()).getByCode(ma);
        if (ct.getTrangThai().equals("Chưa diễn ra")) {
            response.getWriter().print((new Gson()).toJson(ct));
        } else {
            if (ct.getTrangThai().equals("Đang diễn ra")) {
                if ((new DAO_Register()).checkRegister(username, ct.getMa())) {
                    ResultBoard rs = (new DTO.DTO_ResultBoard()).get(username, ma);
                    String str = (new Gson()).toJson(rs);
                    PrintWriter out = response.getWriter();
                    out.print(str);
                    out.flush();
                } else {
                    response.getWriter().print("'ThongBao': 'Bạn không đăng ký tham gia contest này'");
                }
            } else {
                ResultBoard rs = (new DTO.DTO_ResultBoard()).get(username, ma);
                String str = (new Gson()).toJson(rs);
                PrintWriter out = response.getWriter();
                out.print(str);
                out.flush();
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/jsons");
        response.setCharacterEncoding("UTF-8");
        
        String ma, ten, thoiDiemBatDau, thoiGian;
        ArrayList<Problem> listPro = new ArrayList<>();
        Contest ct = new Contest();
        JsonReader reader = new JsonReader(request.getReader());
        reader.beginObject();
        reader.nextName();
        ma = reader.nextString();reader.nextName();
        ten = reader.nextString();reader.nextName();
        thoiDiemBatDau = reader.nextString();reader.nextName();
        thoiGian = reader.nextString();reader.nextName();
        ct.setMa(ma);
        ct.setTen(ten);
        Date t = null;
        try {
            t = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(thoiDiemBatDau);
            ct.setThoiDiemBatDau(t.getTime());
        } catch (ParseException ex) {
            Logger.getLogger(Submission_Servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        ct.setThoiGian(Float.parseFloat(thoiGian));
        reader.beginArray();
        int stt = 1;
        while(reader.hasNext()){
            Problem pro = new Problem();
            BaiTap bt = new BaiTap();
            reader.beginObject();
            reader.nextName();
            bt.setMa(reader.nextString().split("-")[0]);
            pro.setBaiTap(bt);
            reader.nextName();
            pro.setDiem(Integer.parseInt(reader.nextString()));
            pro.setSoThuTu(stt++);
            listPro.add(pro);
            reader.endObject();
        }
        ct.setListProblem(listPro);
        reader.endArray();
        reader.endObject();
        reader.close();
        if((new DAO_Contest()).save(ct)){
            response.getWriter().print("{\"ThongBao\": \"submit thành công\"}"); 
        }else{
            response.getWriter().print("{\"ThongBao\": \"submit không thành công\"}"); 
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
