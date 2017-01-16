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
				<h1>Add Products</h1>
				<p>Fill the below information to add a new Product</p>
			</div>
			<form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct " 
				method="post" commandName="product" enctype="multipart/form-data">
				
				<div class="form-group">
					<label for="name">Name</label>
					<form:input path="productName" id="name" class = "form-control" />
				</div>
				
				<div class="form-group">
					<label for="category">Category</label>
					<label class="checkbox-inline">
						<form:radiobutton path="productCategory"
						id="category" value="instrument"/> Instrument
					</label>
					<label class="checkbox-inline">
						<form:radiobutton path="productCategory"
						id="category" value="record"/> Record
					</label>
					<label class="checkbox-inline">
						<form:radiobutton path="productCategory"
						id="category" value="Accessory"/> Accessory
					</label>
				</div>
				
				<div class="form-group">
					<label for="description">Description</label>
					<form:textarea path="productDescription" id="description" class = "form-control" />
				</div>
				
				<div class="form-group">
					<label for="price">Price</label>
					<form:input path="productPrice" id="price" class = "form-control" />
				</div>
				
				<div class="form-group">
					<label for="Condition">Condition</label>
					<label class="checkbox-inline">
						<form:radiobutton path="productCondition"
						id="condition" value="new"/> New
					</label>
					<label class="checkbox-inline">
						<form:radiobutton path="productCondition"
						id="condition" value="used"/> Used
					</label>
				</div>
				
				<div class="form-group">
					<label for="Status">Status</label>
					<label class="checkbox-inline">
						<form:radiobutton path="productStatus"
						id="status" value="active"/> Active
					</label>
					<label class="checkbox-inline">
						<form:radiobutton path="productStatus"
						id="status" value="inactive"/> InActive
					</label>
				</div>
				
				<div class="form-group">
					<label for="unitInStock">UnitInStock</label>
					<form:input path="unitInStock" id="unitInStock" class = "form-control" />
				</div>
				
				<div class="form-group">
					<label for="manufacture">Manufacture</label>
					<form:input path="productManufacturer" id="manufacture" class = "form-control" />
				</div>
				
				<div class="form-group">
					<label class="control-labels" for="productImage">
						Upload Picture
					</label>
					<form:input path="productImage" id="productImage" type = "file" class="form:input-large"/>
				</div>
				
				<br><br>
				
				<input type="submit" value="submit" class="btn btn-default">
				<a href='<c:url value="/admin/productInventory"></c:url>' class="btn btn-default">Cancel</a>
				
			</form:form>
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