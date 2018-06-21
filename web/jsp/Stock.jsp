<%-- 
    Document   : Stock
    Created on : 19 juin 2018, 14:50:41
    Author     : mattar
--%>

<%@page import="java.net.URL"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dto.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="tag" %>



 <%! public void fillTab(JspWriter out)
       {
            List<Product> list = new ArrayList<Product>();
           
           try
           {
            URL urlState = new URL("http://172.16.153.29:8080/sebo_backendnew/api/productscatalogue/getlist/");
            list = tools.JsonTools.getProductsFromJson(urlState);
            
            
            
            for (Product p : list)
            {
         
                if (p.getStock() < p.getMinLimit())
                {
                    out.print("<tr class=\"underLimit\">");
                    out.print("<td>" + p.getId() + "</td>");
                    out.print("<td>" + p.getName() + "</td>");
                    out.print("<td>" + p.getCategory().getName()+ "</td>");
                    out.print("<td>" + p.getStock() + "</td>");
                    out.print("<td>" + p.getMinLimit()+ "</td>");
                    out.print("<td><input type=\"number\" name=\"infos\" value=\"0\"/></td>");
                    out.print("<td>"
                            + "<input type=\"hidden\" name=\"infos\" value=" + p.getId() + " />"
                            + "<input class=\"btn\" type=\"submit\" name= \"newSupplierOrderLine\" value=\"Commander\" />"
                            + "</td>");
                    out.print("</tr>");
                    
         
                }
            }
            
            
            for (Product p : list) {
                
                if (p.getStock() >= p.getMinLimit())
                {
                    out.print("<tr class=\"overLimit\">");
                    out.print("<td>" + p.getId() + "</td>");
                    out.print("<td>" + p.getName() + "</td>");
                    out.print("<td>" + p.getCategory().getName()+ "</td>");
                    out.print("<td>" + p.getStock() + "</td>");
                    out.print("<td>" + p.getMinLimit()+ "</td>");
                    out.print("<td><input type=\"number\" name=\"quantity"+p.getId()+"\" /></td>");
                    out.print("<td>"
                            + "<input type=\"hidden\" name=\"infos\" value=" + p.getId() + " />"
                            + "<input class=\"btn\" type=\"submit\" name= \"newSupplierOrderLine\" value=\"Commander\" />"
                            + "</td>");
                    out.print("</tr>");
                    
                }
            }            
           }
           catch (Exception e)
           {
               System.out.print(e.getMessage());
           }
      
       }

%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/StockTabStyle.css">
        <title>Gestion des Stocks</title>
    </head>
    <body>
        <header>
            <h1>Gestion des Stocks</h1>
            
        <tag:menu />
    </header>
       
    <main>
        <form action ="suppliercontroller" method ="post">
        <table>
            <thead>
                <th>ID Article</th>
                <th>Nom Article</th>
                <th>Catégorie</th>
                <th>Quantité en Stock</th>
                <th>Seuil limite</th>
                <th>Quantité à commander</th>
                <th>Validation</th>
             </thead>
             
             <tbody>

            <tr>
                <%fillTab(out);%>
            </tr>
            </tbody>
         </table>
            </form>
        <a href="http://localhost:8080/sebo_bomagasinier/jsp/ConfirmSupplierOrder.jsp"><button class="btn" id="validate">Valider</button></a>
            
            </main>
            
            <footer>   © Sebo Corporation - Gestion Commandes Clients</footer>
    
    </body>
</html>
