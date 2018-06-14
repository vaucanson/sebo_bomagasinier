<%-- 
    Document   : Reception
    Created on : Jun 12, 2018, 2:14:51 PM
    Author     : boilleau
--%>

<%@page import="java.net.URL"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dto.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%! public void printProductToHtml(Product prod, JspWriter out) {
    
    StringBuilder sb = new StringBuilder("");
    
    sb.append("<form action=\"result\" method=\"get\">");
    sb.append("<div class=\"row\">");
    sb.append("<div class=\"col-lg-1\">"+ prod.getId());
    sb.append("<input type=\"hidden\" name=\"id_product\" value=\""+ prod.getId() +"\" />");
    sb.append("</div>");
    sb.append("<div class=\"col-lg-1\">"+ prod.getName() +"</div>");
    sb.append("<div class=\"col-lg-1\">catégorie</div>");
    sb.append("<div class=\"col-lg-1\">date commande</div>");
    sb.append("<div class=\"col-lg-1\">qté commandée</div>");
    sb.append("<div class=\"col-lg-1\">");
    sb.append("<input type=\"number\" name=\"qte_product\" value=\"0\" />");
    sb.append("</div>");
    sb.append("<div class=\"col-lg-1\">");
    sb.append("<input type=\"submit\" class=\"bouton_envoyer\" value=\"ENREGISTRER\" />");
    sb.append("</div>");
    sb.append("</div>");
    sb.append("</form>");
    
    try {
        out.print(sb.toString());
    } catch (Exception ex) {
        ex.printStackTrace();
    }
    
}

%>




<%! public void remplirTableau(JspWriter out) {
    
    List<Product> listProds = new ArrayList<Product>();
    try
    {
     URL url = new URL("http://localhost:8080/sebo_backendnew/api/stockmanager/getstock");

     listProds = tools.JsonTools.getProductsFromJson(url);
     for (Product prod : listProds)
     {
         printProductToHtml(prod, out);
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
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/Reception.css">
    <title>Produits en attente de réception</title>
</head>
<body>
    <header>
        <h1>Gestion des Commandes Clients</h1>
            <nav>
                <a href="#">Accueil</a>
                <a href="#">Consultation Stock</a>
                <a href="#">aaa</a>
                <a href="#">nnnnn</a>
                <a href="#">Nbbbbbre</a>
            </nav>
    </header>

    <main>
    
        
    <div class="container" id="tableau_produits" >
        
        <!-- la ligne d'entête -->
        <div class="row" id='ligne_entete'>
            <div class="col-lg-1">Id</div>
            <div class="col-lg-1">Nom</div>
            <div class="col-lg-1">Date de commande</div>
            <div class="col-lg-1">qté commandée</div>
            <div class="col-lg-1">qté reçue</div>
            <div class="col-lg-1">enregistrer</div>
        </div>

        <% remplirTableau(out);%>

    </div>
        
        
        
        
    </main>
</body>
</html>
