

<jsp:userBean id="AuthentificationUtilisateur"
class="beans.Authentification" scope="page"></jsp:userBean>
<%! String titre="tentavitive d'authentification";  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>
</head>
<body>
<h3><%= titre %></h3>
<% String loginSaisi ="USER1";
String motDePasseSaisi ="PASS1";

%>
<jsp:setProperty property="login" name="AuthentificationUtilisateur"
value="<%=loginSaisi %>"/>
<jsp:setProperty property="password" name="AuthentificationUtilisateur"
value="<%=motDePasseSaisi %>"/>

<b>Vous avez saisi les informations suivants:</b><p>
Nom d'utilisateur:<jsp:getProperty property="login" name="AuthentificationUtilisateur"/><br>
Mot de passe: <jsp:getProperty property="password" name="AuthentificationUtilisateur"/>
<p>
<% boolean valide = AuthetificationUtilisateur.value (); 
if(valide){
%>
<font color="green">Ces parametres sont correctes.</font>
<%  }else{
%>
<font color="red">Cette authentification est invalide.</font>
<%} %>

</body>
</html>