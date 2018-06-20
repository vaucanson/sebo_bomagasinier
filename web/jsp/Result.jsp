

<%@page import="java.net.URL"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dto.OrderedProduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%! private void printProductToHtml(OrderedProduct prod, JspWriter out) {
    printProductToHtml(prod, out, true);
}
%>

<%! private void printProductToHtml(OrderedProduct prod, JspWriter out, boolean fond) { 
    
    // choix de la classe donnant une couleur de fond
    // en fonction du booléen donné
    String backgroundColorClass = fond ? "bgwhite" : "bglightblue";
    
    // appel de la vraie fonction
    printProductToHtml(prod, out, backgroundColorClass);
}     
%>

<%! private void printProductToHtml(OrderedProduct prod, JspWriter out, String bgColorClass) {
    // l'attribut 'action' du formulaire
    String formAction = "result";
    StringBuilder sb = new StringBuilder("");
    sb.append("<form action=\""+ formAction +"\" method=\"get\">\n");
    sb.append("\t<div class=\"row "+ bgColorClass +"\">\n");
    sb.append("\t<div class=\"col-lg-1\">"+ prod.getReference()+ "\n");
    sb.append("\t\t<input type=\"hidden\" name=\"id_product\" value=\""+ prod.getReference() +"\" />\n");
    sb.append("\t</div>\n");
    sb.append("\t<div class=\"col-lg-4\">"+ prod.getName() +"</div>\n");
    sb.append("\t<div class=\"col-lg-1\">"+ prod.getCategory() +"</div>\n");
    sb.append("\t<div class=\"col-lg-2\">"+ prod.getSupplier() +"</div>\n");
    sb.append("\t<div class=\"col-lg-1\">"+ prod.getOrderedQuantity() +"</div>\n");
    sb.append("\t<div class=\"col-lg-1\">\n");
    sb.append("\t\t<input type=\"submit\" class=\"bouton_envoyer\" value=\"OK\" />\n");
    sb.append("\t</div>\n");
    sb.append("\t<div class=\"col-lg-2\">\n");
    sb.append("\t\t<input type=\"number\" name=\"qte_product\" value=\"0\" />\n");
    sb.append("\t</div>\n");
    sb.append("\t</div>\n");
    sb.append("</form>\n");
    
    try {
        out.print(sb.toString());
    } catch (Exception ex) {
        ex.printStackTrace();
    }
}
%>


<%! private void remplirTableau(JspWriter out) {
    
    List<OrderedProduct> listProds = new ArrayList<OrderedProduct>();
    try
    {
     URL url = new URL("http://localhost:8080/sebo_backendnew/api/stockmanager/getorderedproducts");

     listProds = tools.JsonTools.getOrderedProductsFromJson(url);
     boolean fond = true;
     for (OrderedProduct prod : listProds)
     {
         printProductToHtml(prod, out, fond);
         
         // inversion de la valeur du booléen
         fond ^= true;
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
        <div class="row bgdayhblue" id='ligne_entete'>
            <div class="col-lg-1">Référence</div>
            <div class="col-lg-4">Nom</div>
            <div class="col-lg-1">Catégorie</div>
            <div class="col-lg-2">Fournisseur</div>
            <div class="col-lg-1">qté commandée</div>
            <div class="col-lg-1">OK</div>
            <div class="col-lg-2">qté reçue</div>
        </div>

        <% remplirTableau(out);%>

    </div>
        
        
        
    </main>
</body>
</html>
