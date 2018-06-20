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
<%@taglib tagdir="/WEB-INF/tags" prefix="tag" %>

    <%! public void fillTab(JspWriter out, int state)
       {
            List<ClientOrder> list = new ArrayList<ClientOrder>();
           
           try
           {
            URL urlState = new URL("http://172.16.153.29:8080/sebo_backendnew/api/ordermanager/getordersbystate/" + state);
            list = tools.JsonTools.getClientOrdersFromJson(urlState);

            for (ClientOrder c : list) {
                    out.print("<tr>");
                    out.print("<td>" + c.getClient().getId() + "</td>");
                    out.print("<td>" + c.getId() + "</td>");
                    out.print("<td>" + c.getOrderDate() + "</td>");
                    
                    if (state ==31){
                    out.print("<td>Complet</td>");}
                    else
                    {out.print("<td>Incomplet</td>");}
                    out.print("<td><a href=\"http://localhost:8080/sebo_bomagasinier/jsp/OrderDetails.jsp?id=" + c.getId() + "\"><button type=\"button\" class=\"btn\">Details</button></a></td>");
                    out.print("</tr>");
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
        <title>Gestion des Commandes Clients</title>
    </head>
    <body>
        <header>
            
            <h1>Gestion des Commandes Clients</h1>
           
            <tag:menu />

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

                <%fillTab(out, 31);%>

            
            <tr>
                <%fillTab(out, 32);%>
            </tr>
            </tbody>
         </table>
            </main>
            
            <footer>   © Sebo Corporation - Gestion Commandes Clients</footer>
    </body>
</html>
