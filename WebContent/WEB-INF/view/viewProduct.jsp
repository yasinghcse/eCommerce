<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
 	<div class="container">
 		<div class="row">
 			<div class="col-md-5">
 				<img alt="image" src='<c:url value="/resources/images/${product.productId}.png"></c:url>' style="width: 100%; height: 300px;">
 			</div>
 			<div class="col-md-5">
 				<h3>${product.productName}</h3>
 				<p>${product.productDescription}</p>
 				<p>${product.productManufacturer}</p>
 				<p>${product.productCategory}</p>
 				<p>${product.productCondition}</p>
 				<p>${product.productPrice}</p>
 			</div>
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