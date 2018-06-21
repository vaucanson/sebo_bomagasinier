<%-- 
    Document   : ChooseClientOrderTask
    Created on : 19 juin 2018, 14:00:22
    Author     : mattar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib tagdir="/WEB-INF/tags" prefix="tag" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ChooseTask.css">
        <title>Gestion des Stocks</title>
    </head>
    <body>
         <header>
            
            <h1>Gestion des Commandes Fournisseurs</h1>
           
            <tag:menu />

        </header>
            <div><a href="stock"><button class="btn">Gestion des Stocks<br>(Commandes Fournisseurs)</button></a></div>
            
            <div><a href="reception"><button class="btn">Enregistrer réception d'articles</button></a></div>
    </body>
</html>
