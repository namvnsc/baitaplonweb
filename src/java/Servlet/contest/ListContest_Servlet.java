
package Servlet.contest;

import DAO.DAO_Contest;
import Entities.contest.Contest;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ListContest_Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/jsons");
        response.setCharacterEncoding("UTF-8");
        ArrayList<Contest> list = new ArrayList<>();
        list = (new DAO_Contest()).getAll();
        String str = (new Gson()).toJson(list);
        PrintWriter out = response.getWriter();
        out.print(str);
        out.flush();
    }

}
