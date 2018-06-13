<%-- 
    Document   : ClientOrder
    Created on : 12 juin 2018, 13:56:44
    Author     : mattar
--%>


<%@page import="javax.json.JsonObject"%>
<%@page import="java.io.IOException"%>
<%@page import="java.net.MalformedURLException"%>
<%@page import="dto.ClientOrder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.util.ArrayList" %>

<%
    
            ArrayList<ClientOrder> listState31 = new ArrayList<>();
            ArrayList<ClientOrder> listState32 = new ArrayList<>();
            
            
       // try {
       /*     URL url = new URL("http://172.16.153.29:8080/sebo_backendnew/api/ordermanager/getordersbystate?31");
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Accept", "application/json");

		if (conn.getResponseCode() != 200) {
                    out.print("Erreur de connexion : " + conn.getResponseCode() + " - " + conn.getResponseMessage());
                    
			throw new RuntimeException("Failed : HTTP error code : "
					+ conn.getResponseCode());     
		}

		BufferedReader br = new BufferedReader(new InputStreamReader(
			(conn.getInputStream())));

                if (br.readLine() !=null)
                {
                    String output = br.readLine();
                    out.print(output);
                }
			
		conn.disconnect();*/
                tools.JsonTools.getClientOrdersFromJson("http://172.16.153.29:8080/sebo_backendnew/api/ordermanager/getordersbystate?31");
            
      /*  } catch (MalformedURLException e) {

        e.printStackTrace();

        } catch (IOException e) {

              e.printStackTrace();

        }*/

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
