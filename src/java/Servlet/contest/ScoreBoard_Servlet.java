
package Servlet.contest;

import DTO.DTO_ScoreBoard;
import Entities.contest.ScoreBoard;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ScoreBoard_Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/jsons");
        response.setCharacterEncoding("UTF-8");
        ScoreBoard sb = (new DTO_ScoreBoard()).get(request.getParameter("maContest"));
        String str = (new Gson()).toJson(sb);
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
