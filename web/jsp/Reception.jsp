<%-- 
    Document   : Reception
    Created on : Jun 12, 2018, 2:14:51 PM
    Author     : boilleau
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/normalize.css">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/Reception.css">
        <title>Produits en attente de réception</title>
    </head>
    <body>
        
        <table>
            <thead></thead>
        </table>
        
        
<table>
   <caption>Réception des produits livrés</caption>
   <thead> <!-- En-tête du tableau -->
       <tr>
           <th>Id</th>
           <th>Nom</th>
           <th>Catégorie</th>
           <th>Date de commande</th>
           <th>Quantité commandée</th>
           <th>Quantité reçue</th>
           <th>Enregistrer</th>
           
           
           


       </tr>
   </thead>
   <tbody> <!-- Corps du tableau -->
   <form name="formligneun" id="formligneun" action="result" method="post">
       <tr>
           <td>15643</td>
           <td>Lorie « Ta meilleure Amie »</td>
           <td>Death Metal</td>
           <td>04/06/2018</td>
           <td>15</td>
           <td>-</td>
           <td><input type="submit" value="Envoyer" /></td>
       </tr>
</form>
       <tr>
           <td>15643</td>
           <td>Lorie « Ta meilleure Amie »</td>
           <td>Death Metal</td>
           <td>04/06/2018</td>
           <td>15</td>
           <td>-</td>
           <td><button>ENREGISTRER</button></td>
       </tr>
       <tr>
           <td>15643</td>
           <td>Lorie « Ta meilleure Amie »</td>
           <td>Death Metal</td>
           <td>04/06/2018</td>
           <td>15</td>
           <td>-</td>
           <td><button>ENREGISTRER</button></td>
       </tr>
   </tbody>
</table>
        
        
        
        
    </body>
</html>
