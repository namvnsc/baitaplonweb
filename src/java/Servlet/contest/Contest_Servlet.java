/*
 */
package Servlet.contest;

import DAO.DAO_Contest;
import DAO.DAO_Problem;
import DAO.DAO_Register;
import Entities.contest.Contest;
import Entities.contest.Problem;
import Entities.contest.ResultBoard;
import com.google.gson.Gson;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class Contest_Servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Contest_Servlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Contest_Servlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
//                    ArrayList<Problem> list = (new DAO_Problem()).getAll(ma);
                    String str = (new Gson()).toJson(rs);
                    PrintWriter out = response.getWriter();
                    out.print(str);
                    out.flush();
                } else {
                    response.getWriter().print("'ThongBao': 'Bạn không đăng ký tham gia contest này'");
                }
            } else {
                ResultBoard rs = (new DTO.DTO_ResultBoard()).get(username, ma);
//                    ArrayList<Problem> list = (new DAO_Problem()).getAll(ma);
                String str = (new Gson()).toJson(rs);
                PrintWriter out = response.getWriter();
                out.print(str);
                out.flush();
            }
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
