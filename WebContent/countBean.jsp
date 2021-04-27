<html>
<head>
<meta charset="windows-1256">
<title>counter page</title>
</head>
<body>
<p> on repére le bean par le nom nomBean<br>
<jsp:useBean id="nomBean" class="beans.SimpleBean" scope="session"></jsp:useBean>

<p> On accede au compteur avec le methode getCompteur:
<br> compteur = <%= nomBean.getCompteur() %>
<hr>
on  incrémente le compteur avec la méthode incrément <% nomBean.increment (); %>

<p> On peut accéder a la proprieté par la balise getProperty :<br>


<jsp:getProperty property="nomBean" name="compteur"/>
</body>
</html>