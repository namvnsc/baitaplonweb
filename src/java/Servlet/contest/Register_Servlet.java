
package Servlet.contest;

import DAO.DAO_Register;
import com.google.gson.stream.JsonReader;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register_Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/jsons");
        response.setCharacterEncoding("UTF-8");
        String us, ma;
        JsonReader reader = new JsonReader(request.getReader());
        reader.beginObject();
        reader.nextName();
        us = reader.nextString();reader.nextName();
        ma = reader.nextString();
        if(!(new DAO_Register()).checkRegister(us, ma)){
            (new DAO_Register()).save(us, ma);
        }
        response.getWriter().print("{\"ThongBao\": \"Register thành công\"}");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
