<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Authentification</title>
</head>
<body bgcolor="pink">
<form method="POST" action="EX2.html"  >

<h1>Bienvenue à Votre Session <br></h1>
<% if(request.getParameter("nom").equals("") || request.getParameter("prenom").equals("") ) %>
<jsp:useBean id="user" class="Modele.NameBean" scope="session"></jsp:useBean>
<jsp:setProperty property="nom" name="user" />
<jsp:setProperty property="prenom" name="user" />
<hr>
<h2>Nom : <%=user.getNom()%></h2>
<h2>Prenom : <%=user.getPrenom() %></h2><br>
<input type="submit" value="Retour">

</form>
</body>
</html>