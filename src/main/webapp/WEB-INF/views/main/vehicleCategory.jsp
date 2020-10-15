<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


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
<%-- in vehicle category
${param.vehicle} --%>
<!-- <form method="post"> -->
<%String vehicle=request.getParameter("vehicle"); 
 if(vehicle.equals("car")){
    //out.print("Here is car:"+vehicle);
 %>
 <!-- <br><input type="radio" name="vehicleCategory" value="suv" checked> SUV<br>
  <input type="radio" name="vehicleCategory" value="sedan"> Sedan<br> -->
		  <section class="features-icons">
				<div>
				   <div class="card-header">Cars | Choose Your Category</div>
				       <div class="card-body">

						</div>
				
							<div class="row">
						  	<div class="column">
						  	<figure>
							 	<a href="<spring:url value='/main/vehicleList?vehicle=car&vehicleCategory=suv'/>">
							  		<img src="../bootstrap/images/SUV.jpg" alt="Snow" style="width:100%" title="Cars">
							 	</a>
							 	<figcaption align="center">SUV</figcaption>
							 </figure>
						  	</div>
						  	<div class="column">
						  	<figure>
							 	<a href="<spring:url value='/main/vehicleList?vehicle=car&vehicleCategory=sedan'/>">
							  		<img src="../bootstrap/images/Sedan.jpg" alt="Forest" style="width:100%" title="Bikes">
							 	</a>
							 	<figcaption align="center">Sedan</figcaption>
							</figure>
						  	</div>
							</div>
							
				</div>	
		</section>
  <%
   }
   else 
   {
	  // out.print("Here is bike:"+vehicle); 
   %>
	<!-- <br><input type="radio" name="vehicleCategory" value="sports" checked>Sports<br>
    <input type="radio" name="vehicleCategory" value="moped">Moped<br> -->
	    <section class="features-icons">
			<div>
			   <div class="card-header">Bikes | Choose Your Category</div>
			       <div class="card-body">

					</div>
			
						<div class="row">
					  	<div class="column">
					  	<figure>
						 	<a href="<spring:url value='/main/vehicleList?vehicle=bike&vehicleCategory=sports'/>">
						  		<img src="../bootstrap/images/Sports.png" alt="Snow" style="width:100%" title="Cars">
						 	</a>
						 	<figcaption align="center">Sports</figcaption>
						 </figure>
					  	</div>
					  	<div class="column">
					  	<figure>
						 	<a href="<spring:url value='/main/vehicleList?vehicle=bike&vehicleCategory=moped'/>">
						  		<img src="../bootstrap/images/Moped.jpg" alt="Forest" style="width:100%" title="Bikes">
						 	</a>
						 	<figcaption align="center">Moped</figcaption>
						</figure>
					  	</div>
						</div>
						
			</div>	
	</section>
   <%
   }%>
    <%--  <input type="hidden" name="vehicle" value="${param.vehicle}" /><br> --%>
<!--      <input type="submit" value="Proceed to List" />
</form> -->
</body>
<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</html>