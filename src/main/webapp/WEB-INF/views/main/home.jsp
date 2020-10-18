<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link href="<spring:url value='../bootstrap/css/bootstrap.min.css'/>" type="text/css" rel="stylesheet" />

<style>
* {
  box-sizing: border-box;
}

.column {
  float: left;
  width: 50%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
</style>

</head>
<body>
  <jsp:include page="/WEB-INF/views/main/navigation.jsp" />
<%-- <a href="<spring:url value='/main/login'/>">Login Here</a><br/>
<a href="<spring:url value='/main/registration'/>">Sign Up Here</a><br/> --%>
<section class="features-icons">
<div>
   <div class="card-header">Choose Your Category</div>
       <div class="card-body">
	<!-- <form method="post">	
		  <input type="radio" name="vehicle" value="car" checked> Car<br>
		  <input type="radio" name="vehicle" value="bike"> Bike<br>
		  <input type="submit" value="Find Subcatagory" />
			</form>  -->
		</div>

			<div class="row">
		  	<div class="column">
		  	<figure>
			 	<a href="<spring:url value='/main/vehicleCategory?vehicle=car'/>">
			  		<img src="../bootstrap/images/Cars.jpg" alt="Snow" style="width:100%" title="Cars">
			 	</a>
			 	<figcaption align="center">Cars</figcaption>
			 </figure>
		  	</div>
		  	<div class="column">
		  	<figure>
			 	<a href="<spring:url value='/main/vehicleCategory?vehicle=bike'/>">
			  		<img src="../bootstrap/images/Bikes.jpg" alt="Forest" style="width:100%" title="Bikes">
			 	</a>
			 	<figcaption align="center">Bikes</figcaption>
			</figure>
		  	</div>
			</div>
			
</div>	
</section>
	
	<%-- <a href="<spring:url value='/email/send_mail'/>" class="btn btn-primary">Mail</a><br/> --%>
	<jsp:include page="/WEB-INF/views/main/footer.jsp" />
	
	
	
</body>
</html>