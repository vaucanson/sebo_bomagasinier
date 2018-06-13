<%-- 
    Document   : ClientOrder
    Created on : 12 juin 2018, 13:56:44
    Author     : mattar
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.io.IOException"%>
<%@page import="java.net.MalformedURLException"%>
<%@page import="dto.ClientOrder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>

<%
    
            List<ClientOrder> listState31 = new ArrayList<ClientOrder>();
        //    ArrayList<ClientOrder> listState32 = new ArrayList<ClientOrder>();
            
            
       try {
           
            URL url = new URL("http://172.16.153.29:8080/sebo_backendnew/api/ordermanager/getordersbystate/31");
            listState31 = tools.JsonTools.getClientOrdersFromJson(url);
            
            
                
              for (int i = 0; i < listState31.size(); i++)
                {
                    System.out.print(listState31.get(i));
                }
            
       /* } catch (MalformedURLException e) {

        e.printStackTrace();

        } catch (IOException e) {

              e.printStackTrace();
*/
        }
        catch (Exception e)
        {
            System.out.print(e.getMessage());
        }
           

%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/normalize.css">
        <link rel="stylesheet" type="text/css" href="css/General.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/ClientsOrders.css">
        <title>JSP Page</title>
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
                <td>Carmen</td>
                <td>33 ans</td>
                <td>Espagne</td>
                <td>blabla</td>
                <td><button type="button" class="btn">Details</button></td>
            </tr>
            
            <tr>
                <td>Michelle</td>
                <td>26 ans</td>
                <td>États-Unis</td>
                <td>blabla</td>
                <td><button type="button">Details</button></td>
            </tr>
            </tbody>
         </table>
            
            </main>
    </body>
</html>
