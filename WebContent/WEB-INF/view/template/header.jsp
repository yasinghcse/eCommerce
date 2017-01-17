<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">
</head>
<body>
	<div class="navbar-wrapper">
      <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top" >
          <div class="container testContainer">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">Yadi's eCommerce</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active">
                <a href="<c:url value="/" />">
                Home</a>
                </li>
                <li><a href="<c:url value="/productList" />">Product</a></li>
                <li><a href="#contact">Contact</a></li>
              </ul>
              <ul class="nav navbar-nav pull-right">
              	<li>
              		<a href='<c:url value = "/admin"></c:url>'>
              		Admin</a>
              	</li>
              </ul>
            </div>
          </div>
        </nav>

      </div>
    </div>
</body>
</html>