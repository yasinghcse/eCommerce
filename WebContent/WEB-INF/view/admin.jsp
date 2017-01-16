<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Adminisator Page</title>
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
				<h1>All Products</h1>
				<p>Check all awsome products catelog</p>
			</div>
			<h3>
				<a href="<c:url value= "/admin/productInventory"></c:url>">ProductInventory</a>
			</h3>
			<p>Here you can view, edit, modify the product Inventory</p>
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