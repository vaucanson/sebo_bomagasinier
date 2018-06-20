/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Bean.ChangeStates;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author mattar
 */
public class OrderTreatementController extends HttpServlet {

    
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
    
        
        String param = request.getParameter("pm");
        String button = request.getParameter("button");
        System.out.println(param);
        
        if ("Valider la Commande".equals(button))
        {
            ChangeStates.setPrepare(Integer.parseInt(param));
        }
        else if ("Annuler la Commande".equals(button))
        {            
            ChangeStates.setCancel(Integer.parseInt(param));
        }
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("clientsorders");
        
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
