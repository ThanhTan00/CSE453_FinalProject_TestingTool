/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Control;

import Model.Barrel;
import Model.CommissionTestcases;
import Model.Lock;
import Model.Stock;
import Model.TriangleClassify;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "MainControl", urlPatterns = {"/MainControl"})
public class MainControl extends HttpServlet {

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
            case "triangle" -> {
                ArrayList<TriangleClassify> listTriangle = new ArrayList<TriangleClassify>();
                int min = Integer.parseInt(request.getParameter("min")) ;
                int max = Integer.parseInt(request.getParameter("max")) ;
                String testOption = request.getParameter("test_option");
                if (testOption!= null && testOption.equalsIgnoreCase("boundary")) {
                    BoundaryTesting tester = new BoundaryTesting();
                    listTriangle = tester.generateTestCasesForTriangleProblem(min, max);
                }
                else if (testOption!= null && testOption.equalsIgnoreCase("robustness")){
                    RobustnessBoundaryTesting tester = new RobustnessBoundaryTesting();
                    listTriangle = tester.generateTestCasesForTriangleProblem(min, max);
                }
                session.setAttribute("min", min);
                session.setAttribute("max", max);
                session.setAttribute("testOption", testOption);
                request.setAttribute("listTriangle", listTriangle);
                target = "view/TriangleTesting.jsp";
            }
            
            case "commission" -> {
                ArrayList<CommissionTestcases> listCommission = new ArrayList<CommissionTestcases>();
                int minLock = Integer.parseInt(request.getParameter("min_lock"));
                int maxLock = Integer.parseInt(request.getParameter("max_lock"));
                int minStock = Integer.parseInt(request.getParameter("min_stock"));
                int maxStock = Integer.parseInt(request.getParameter("max_stock"));
                int minBarrel = Integer.parseInt(request.getParameter("min_barrel"));
                int maxBarrel = Integer.parseInt(request.getParameter("max_barrel"));
                
                String lockCost = request.getParameter("lock_cost");
                String stockCost = request.getParameter("stock_cost");
                String barrelCost = request.getParameter("barrel_cost");
                
                String testOption = request.getParameter("test_option");
                
                Lock lock = new Lock(minLock, maxLock);
                Stock stock = new Stock(minStock, maxStock);
                Barrel barrel = new Barrel(minBarrel, maxBarrel);
                
                
                if (!lockCost.isEmpty()){
                    lock.setCost(Integer.parseInt(lockCost));
                }
                if (!stockCost.isEmpty()){
                    stock.setCost(Integer.parseInt(stockCost));
                }
                if (!barrelCost.isEmpty()){
                    barrel.setCost(Integer.parseInt(barrelCost));
                }
                
                if (testOption!= null && testOption.equalsIgnoreCase("boundary")) {
                    BoundaryTesting tester = new BoundaryTesting();
                    listCommission = tester.generateTestCasesForCommissionProblem(lock, stock, barrel);
                } else if (testOption!= null && testOption.equalsIgnoreCase("robustness")) {
                    RobustnessBoundaryTesting tester = new RobustnessBoundaryTesting();
                    listCommission = tester.generateTestCasesForCommissionProblem(lock, stock, barrel);
                }
                request.setAttribute("listCommission", listCommission);
                session.setAttribute("min_lock", minLock);
                session.setAttribute("max_lock", maxLock);
                session.setAttribute("min_stock", minStock);
                session.setAttribute("max_stock", maxStock);
                session.setAttribute("min_barrel", minBarrel);
                session.setAttribute("max_barrel", maxBarrel);
                session.setAttribute("testOption", testOption);
                target = "view/CommissionTesting.jsp";
            }
                
            
//            case "triangle" -> {
//                request.setAttribute("listTriangle", listTriangle);
//            }
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
