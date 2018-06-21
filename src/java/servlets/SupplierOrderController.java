/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Bean.ChangeStates;
import Bean.SupplierOrderBean;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mattar
 */
public class SupplierOrderController extends HttpServlet{
    
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
    
       /* String id = request.getParameter("id");
        String quantity = request.getParameter("quantity" + id);
        System.out.println(quantity);
        System.out.println(id);*/
        
        String[] str = request.getParameterValues("infos");
        
        for (int i = 0; i < str.length; i++)
        {
            if (!"0".equals(str[i]))
            {
                System.out.println("qt = " + str[i]);
                i++;
            }            
        }


        
        
//        SupplierOrderBean.createLine(Integer.parseInt(id));
        
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("stock");
        
        dispatcher.forward(request, response);
    }
    
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
    }
    
}