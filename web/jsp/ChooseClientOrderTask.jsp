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
        <title>Gestion Commandes Clients</title>
    </head>
    <body>
         <header>
            
            <h1>Gestion des Commandes Clients</h1>
           
            <tag:menu />

        </header>
            <div><a href="clientsorders"><button class="btn">Liste des commandes en attente</button></a></div>
            
            <div><a href="#"><button class="btn">Préparation de commandes</button></a></div>
    </body>
</html>
