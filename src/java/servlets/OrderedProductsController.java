
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author boilleau
 */
public class OrderedProductsController extends HttpServlet
{
    
    /**
     * Constructeur
     */
    public OrderedProductsController()
    {
    }
    
    /**
     * 
     * @param request
     * @param response
     * @throws IOException
     * @throws ServletException 
     */
    public void process(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException
    {
        // récupération des paramètres
        int reference = Integer.parseInt(request.getParameter("ref_product"));
        int orderedQuantity = Integer.parseInt(request.getParameter("ordered_quantity"));
        
        HttpSession masess = request.getSession(true);
        masess.setAttribute("ref", reference);
        masess.setAttribute("qty", orderedQuantity);
        
        request.getRequestDispatcher("/réception").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        this.process(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
    {
        this.process(req, resp);
    }
    
    
}

