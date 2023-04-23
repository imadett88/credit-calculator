<%@taglib uri="http://java.sun.com/jsp/jslt/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Produits</title>
<link rel="stylesheet" type="text" href="css/bootstrap.min.css">
</head>
<body> 
<%@include file="header.jsp" %>
<div class="container col-md-10 col-md-offset-1)">
<div class="panel panel-pimary">
<div class="panel-heading">Recherche des produits</div>
<div class="panel-body">
<form action="chercher.php" method="get">
<label>Mot clé</label>
<input type="text" name="motCle" value="${model.motCle}"/>
<button type="submit" class="btn btn-primary">checher</button>
</form>
<table class="table table-striped">
<tr>
<th>ID</th><th>Designation</th><th>Prix</th><th>Quantite</th>
</tr>
<c:forEach items=$"{model.produits}" var="p">
<tr>
<td>${p.id}</td>
<td>${p.designation}</td>
<td>${p.prix}</td>
<td>${p.quantite}</td>
</tr>
</c:forEach>
</table>
</div>
</div>
</div>


</body>
</html>