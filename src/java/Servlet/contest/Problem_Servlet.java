package Servlet.contest;

import DAO.DAO_BaiTap;
import Entities.contest.BaiTap;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Problem_Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/jsons");
        response.setCharacterEncoding("UTF-8");
        BaiTap bt = (new DAO_BaiTap()).getByCode(request.getParameter("maBaiTap"));
        String str = (new Gson()).toJson(bt);
        PrintWriter out = response.getWriter();
        out.print(str);
        out.flush();
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
