<html>
<head>
<meta charset="windows-1256">
<title>counter page</title>
</head>
<body>
<p> on rep�re le bean par le nom nomBean<br>
<jsp:useBean id="nomBean" class="beans.SimpleBean" scope="session"></jsp:useBean>

<p> On accede au compteur avec le methode getCompteur:
<br> compteur = <%= nomBean.getCompteur() %>
<hr>
on  incr�mente le compteur avec la m�thode incr�ment <% nomBean.increment (); %>

<p> On peut acc�der a la propriet� par la balise getProperty :<br>


<jsp:getProperty property="nomBean" name="compteur"/>
</body>
</html>