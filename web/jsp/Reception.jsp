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

        <form action="result" method="get">
            <div class="row">
                    <div class="col-lg-1">45432
                        <input type="hidden" name="id_un" value="45432" />
                    </div>
                    <div class="col-lg-1">Lorie « ta meilleure amie »</div>
                    <div class="col-lg-1">death metal</div>
                    <div class="col-lg-1">2018/12/04</div>
                    <div class="col-lg-1">56</div>
                    <div class="col-lg-1">
                        <input type="number" name="qte_un" value="0" />
                    </div>
                    <div class="col-lg-1">
                            <input type="submit" class="bouton_envoyer" value="ENREGISTRER" />
                    </div>
            </div>
        </form>

        <form action="result" method="get">
            <div class="row">
                    <div class="col-lg-1">45432
                        <input type="hidden" name="id_deux" value="45432" />
                    </div>
                    <div class="col-lg-1">Lorie « ta meilleure amie »</div>
                    <div class="col-lg-1">death metal</div>
                    <div class="col-lg-1">2018/12/04</div>
                    <div class="col-lg-1">56</div>
                    <div class="col-lg-1">
                        <input type="number" name="qte_deux" value="0" />
                    </div>
                    <div class="col-lg-1">
                            <input type="submit" class="bouton_envoyer" value="ENREGISTRER" />
                    </div>
            </div>
        </form>

        <form action="result" method="get">
            <div class="row">
                    <div class="col-lg-1">45432
                        <input type="hidden" name="id_trois" value="45432" />
                    </div>
                    <div class="col-lg-1">Lorie « ta meilleure amie »</div>
                    <div class="col-lg-1">death metal</div>
                    <div class="col-lg-1">2018/12/04</div>
                    <div class="col-lg-1">56</div>
                    <div class="col-lg-1">
                        <input type="number" name="qte_trois" value="0" />
                    </div>
                    <div class="col-lg-1">
                            <input type="submit" class="bouton_envoyer" value="ENREGISTRER" />
                    </div>
            </div>
        </form>

    </div>
</body>
</html>
