/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author tanle
 */
@WebServlet(name = "NavControl", urlPatterns = {"/NavControl"})
public class NavControl extends HttpServlet {

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
        String mode = request.getParameter("mode");
        String target = "view/HomePage.jsp";
        HttpSession session = request.getSession();
         switch (mode) {
             case "home" -> {
                target = "view/HomePage.jsp";
                session.removeAttribute("min");
                session.removeAttribute("max");
                session.removeAttribute("testOption");
                session.setAttribute("active", 1);
            }
//             case "assignment1" -> {
//                target = "view/HomePage.jsp";
//                session.removeAttribute("min");
//                session.removeAttribute("max");
//                session.removeAttribute("testOption");
//                session.setAttribute("active", 2);
//            }
            case "triangleTesting" -> {
                target = "view/TriangleTesting.jsp";
                session.removeAttribute("min");
                session.removeAttribute("max");
                session.removeAttribute("testOption");
                session.setAttribute("active", 3);
            }
            case "commissionTesting" -> {
                target = "view/CommissionTesting.jsp";
                session.removeAttribute("min_lock");
                session.removeAttribute("max_lock");
                session.removeAttribute("min_stock");
                session.removeAttribute("max_stock");
                session.removeAttribute("min_barrel");
                session.removeAttribute("max_barrel");
                session.removeAttribute("testOption");
                session.setAttribute("active", 4);
            }
         }
        RequestDispatcher requestDispatcher = request.getRequestDispatcher(target);
        requestDispatcher.forward(request, response);
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
        processRequest(request, response);
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
