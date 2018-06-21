<%-- 
    Document   : OrderDetails
    Created on : 12 juin 2018, 14:05:12
    Author     : mattar
--%>


<%@page import="tools.CommonTools"%>
<%@page import="java.net.MalformedURLException"%>
<%@page import="java.io.OutputStreamWriter"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dto.ClientOrder"%>
<%@page import="dto.OrderLineDetails"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="tag" %>

<%! public void fillTab(JspWriter out, int idOrder)
       {
            List<OrderLineDetails> list = new ArrayList<OrderLineDetails>();
           
           try
           {
            URL urlState = new URL("http://172.16.153.29:8080/sebo_backendnew/api/ordermanager/getorderlinebyorderid/" + idOrder);
            list = tools.JsonTools.getOrderDetailsFromJson(urlState);


            for (OrderLineDetails o : list) {
                    out.print("<tr>");
                    out.print("<td>" + o.getId() + "</td>");
                    out.print("<td>" + o.getName() + "</td>");
                    out.print("<td>" + o.getCategory() + "</td>");
                    out.print("<td>" + o.getQuantityOrder()+ "</td>");
                    out.print("<td>" + o.getQuantityStock()+ "</td>");
                    out.print("</tr>");
            }
            if (list.size() == 0)
            {
                out.print("<td> ************* </td>");
                out.print("<td> ************* </td>");
                out.print("<td> Commande inexistante </td>");
                out.print("<td> ************* </td>");
                out.print("<td> ************* </td>");
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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/TabStyle.css">  
        <title>Détails de la Commande n° <%=request.getParameter("id") %></title>
    </head>
    <body>
        <header>
            
            <h1>Détails de la commande</h1>
            
                   <tag:menu />

        </header>
        
        <main>
            <span><% 
                    if (CommonTools.isInteger(request.getParameter("id"))) 
                    {
                       out.print("Commande n° " + request.getParameter("id"));
                           }
                    else
                    {
                        out.print("ERREUR");
                           }%></span>
            
        <table>
            <thead>
                <th>Identifiant Article</th>
                <th>Nom Article</th>
                <th>Catégorie</th>
                <th>Quantité Commandée</th>
                <th>Quantité en Stock</th>
             </thead>
                          
             <tbody>
                 
                    
                     <%
                        
                         if (CommonTools.isInteger(request.getParameter("id"))) 
                    { 
                        fillTab(out, Integer.parseInt(request.getParameter("id")));
                    }
                    else
                        {
                            %> <jsp:forward page="/clientsorders" /> <%
                         }
                         
                     %>
                     

            </tbody>
         </table>
            <form action="../ordertreatement" method="post">
            <div>
                <input type="hidden" name="pm" value=<%=request.getParameter("id")%> />
                <input type="submit" name="button" class="btn" value="Valider la Commande" /> 
            </div>
            <div>
                <input type="submit" name="button" class="btn" value="Annuler la Commande" />
            </div>
            </form>
            </main>
                
            <footer>   © Sebo Corporation - Gestion Commandes Clients</footer>
    </body>
</html>