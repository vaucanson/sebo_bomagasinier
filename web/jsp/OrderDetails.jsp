<%-- 
    Document   : OrderDetails
    Created on : 12 juin 2018, 14:05:12
    Author     : mattar
--%>


<%@page import="java.net.URL"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dto.ClientOrder"%>
<%@page import="dto.OrderLineDetails"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

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
                out.print("<td> Aucun article </td>");
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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/OrderDetails.css">
        <title>Gestion de Clients</title>
    </head>
    <body>
        <header>
            
            <h1>Détails de la commande</h1>
            
            <!-- factoriser la nav -->
                <nav>
                    <a href="#">Accueil</a>
                    <a href="#">Consultation Stock</a>
                    <a href="#">aaa</a>
                    <a href="#">nnnnn</a>
                    <a href="#">Nbbbbbre</a>
                </nav>
        </header>
        
        <main>
        <table>
            <thead>
                <th>Identifiant Article</th>
                <th>Nom Article</th>
                <th>Catégorie</th>
                <th>Quantité Commandée</th>
                <th>Quantité en Stock</th>
             </thead>
             
             <tbody>
                 <tr>
                <%fillTab(out, 31);%>
            </tr>
            </tbody>
         </table>
            
            </main>
            
            <footer>   © Sebo Corporation - Gestion Commandes Clients</footer>
    </body>
</html>