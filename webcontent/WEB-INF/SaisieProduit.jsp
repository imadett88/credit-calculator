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
<div class="container col-md-8 col-md-offset-2)">
<div class="panel panel-pimary">
<div class="panel-heading">Saisie d'un produit</div>
<div class="panel-body">
<form action="SaveProduit.php" method="post">
<div class="form-group">
<label class="control-mabel">Désignation</label>
<input type="text" name="designation" class="from-control">
<span></span>
</div>

<div class="form-group">
<label class="control-mabel">Prix</label>
<input type="text" name="designation" class="from-control">
<span></span>
</div>

<div class="form-group">
<label class="control-mabel">Quantité</label>
<input type="text" name="designation" class="from-control">
<span></span>
</div>

<div>
<button type="submit" class="btn btn-primary">Save</button>
</div>

</form>
</div>
</div>
</div>


</body>
</html>