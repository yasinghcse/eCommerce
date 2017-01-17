<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Yadi ecommerce Store</title>
<!-- Bootstrap core CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom styles for this template -->
<!--  <link href="css/carousel.css" rel="stylesheet">-->
<link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">
</head>
<body>

<body>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/view/template/header.jsp" %>
    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide"
					src='<c:url value = "/resources/images/carol3.jpg"></c:url>'
					alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Buy Music</h1>
              <p>Buy any category of music online<p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="second-slide"
					src='<c:url value = "/resources/images/carol1.jpg"></c:url>'
					alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Buy Accessory</h1>
              <p>Buy any category of accessory online</p>
            </div>
          </div>
        </div>
        <div class="item">
          <img class="third-slide"
					src='<c:url value = "/resources/images/carol2.jpg"></c:url>'
					alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Buy Instrument</h1>
              <p>Buy any category of instrument online</p>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"
			aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
	<!-- /.carousel -->


    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4">
          <img class="img-circle"
					src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
					alt="Generic placeholder image" width="140" height="140">
          <h2>Heading</h2>
          <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
          <p>
					<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
				</p>
        </div>
			<!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle"
					src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
					alt="Generic placeholder image" width="140" height="140">
          <h2>Heading</h2>
          <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
          <p>
					<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
				</p>
        </div>
			<!-- /.col-lg-4 -->
        <div class="col-lg-4">
          <img class="img-circle"
					src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw=="
					alt="Generic placeholder image" width="140" height="140">
          <h2>Heading</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p>
					<a class="btn btn-default" href="#" role="button">View details &raquo;</a>
				</p>
        </div>
			<!-- /.col-lg-4 -->
      </div>
		<!-- /.row -->

      <!-- FOOTER -->
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
  </body></body>

</html>