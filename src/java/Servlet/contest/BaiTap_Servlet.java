
package Servlet.contest;
import Entities.contest.BaiTap;
import DAO.DAO_BaiTap;
import com.google.gson.Gson;
import com.google.gson.stream.JsonReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BaiTap_Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/jsons");
        response.setCharacterEncoding("UTF-8");
        ArrayList<BaiTap> dsbt = (new DAO_BaiTap()).getAll();
        String str = (new Gson()).toJson(dsbt);
        PrintWriter out = response.getWriter();
        out.print(str);
        out.flush();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/jsons");
        response.setCharacterEncoding("UTF-8");
        BaiTap bt = new BaiTap();
        JsonReader reader = new JsonReader(request.getReader());
        reader.beginObject();
        reader.nextName();
        bt.setMa(reader.nextString());reader.nextName();
        bt.setTen(reader.nextString());reader.nextName();
        bt.setDeBai(reader.nextString());reader.nextName();
        bt.setGioiHanThoiGian(Float.parseFloat(reader.nextString()));reader.nextName();
        bt.setFileInput(reader.nextString());reader.nextName();
        bt.setFileOutput(reader.nextString());
        reader.endObject();
        reader.close();
        System.out.println(bt.getDeBai());
        if((new DAO_BaiTap()).save(bt)){
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
