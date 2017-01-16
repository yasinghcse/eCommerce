<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Music Store</title>
<!-- Bootstrap core CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
<body>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<%@ include file="/WEB-INF/view/template/header.jsp" %>

 <div class="container marketing">
	<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>All Product</h1>
				<p>As Admin you can add, edit and remove products</p>
			</div>
			<table class="table table-stripped table-hover">
				<thead>
					<tr class="bg-success">
						<th>Photo Thumb</th>
						<th>Product Name</th>
						<th>Category</th>
						<th>Condition</th>
						<th>Price</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<c:forEach items="${product }" var="product">
					<tr>
						<td><img src="#" alt="image"></td>
						<td>${product.productName}</td>
						<td>${product.productCategory}</td>
						<td>${product.productCondition}</td>
						<td>${product.productPrice}</td>
						<td>
						<a href="<spring:url value="/productList/viewProduct/${product.productId}" />" >
							<span class="glyphicon glyphicon-info-sign"/>
						</td>
						<td>
						<a href="<spring:url value="/admin/productInventory/deleteProduct/${product.productId}" />" >
							<span class="glyphicon glyphicon-remove"/>
						</td>
					</tr>
				</c:forEach>
			</table>
			
			<a href='<spring:url value="/admin/productInventory/addProduct"></spring:url>' class="btn btn-primary" >Add Products</a>
		</div>
	</div>

	
	
	<%@ include file="/WEB-INF/view/template/footer.jsp" %>

	</div>
	<!-- /.container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</body>

</html>