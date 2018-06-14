<%-- 
    Document   : ClientOrder
    Created on : 12 juin 2018, 13:56:44
    Author     : mattar
--%>


<%@page import="org.omg.PortableInterceptor.SYSTEM_EXCEPTION"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dto.ClientOrder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.net.URL"%>

    <%! public void fillTab(JspWriter out, int state)
       {
            List<ClientOrder> list = new ArrayList<ClientOrder>();
           
           try
           {
            URL urlState = new URL("http://172.16.153.29:8080/sebo_backendnew/api/ordermanager/getordersbystate/" + state);
            list = tools.JsonTools.getClientOrdersFromJson(urlState);

            for (ClientOrder c : list) {
                    out.print("<td>" + c.getClient().getId() + "</td>");
                    out.print("<td>" + c.getId() + "</td>");
                    out.print("<td>" + c.getOrderDate() + "</td>");
                    out.print("<td>blabla</td>");
                    out.print("<td><button type=\"button\" class=\"btn\">Details</button></td>");
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
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ClientsOrders.css">
        <title>Gestion de Clients</title>
    </head>
    <body>
        <header>
            
            <h1>Gestion des Commandes Clients</h1>
            
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
                <th>Identifiant Client</th>
                <th>N° Commande</th>
                <th>Date Commande</th>
                <th>Disponibilité</th>
                <th>Traiter</th>
             </thead>
             
             <tbody>
                 <tr>
                <%fillTab(out, 31);%>
            </tr>
            
            <tr>
                <%fillTab(out, 32);%>
            </tr>
            </tbody>
         </table>
            
            </main>
            
            <footer>   © Sebo Corporation - Gestion Commandes Clients</footer>
    </body>
</html>
