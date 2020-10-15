<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/main/navigation.jsp" />
<!-- in vehicledetails -->
<h3 align="center">Vehicles List</h3>

<div class="container">

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-12">
<table class="table table-striped">

<thead>
<tr>
<th scope="col">Id</th>
<th scope="col">Category</th>
<th scope="col">CC</th>
<th scope="col">Per Day Rate</th>
<th scope="col">Deposite</th>
<th scope="col">Fuel</th>
<th scope="col">Name</th>
<th scope="col">Number</th>
<th scope="col">Pic_Path</th>
<th scope="col">Type</th>
<th scope="col">Update</th>
<th scope="col">Delete</th>
</tr>
</thead>	
		<c:forEach var="v" items="${requestScope.vehicle_list}">

			<tr>
				<td>${v.v_id}</td>
				<td>${v.v_category}</td>
				<td>${v.v_cc}</td>
				<td>${v.v_day_rate}</td>
			 	<td>${v.v_deposit}</td>
			 	<td>${v.v_fuel}</td>
			 	<td>${v.v_name}</td>
			 	<td>${v.v_number}</td>
			 	<td>${v.v_pic_path}</td>
			 	<td>${v.v_type}</td>
				<td><a href="<spring:url value='/upload/uploadForm?vid=${v.v_id}'/>">Update</a></td>
				<td><a href="<spring:url value='/admin/deleteVehicle?vid=${v.v_id}'/>">Delete</a></td>
			</tr>
			
				
			</c:forEach></table>
			<%-- <a href="<spring:url value='/admin/addVehicle?vid=${v.id}' />" class="btn btn-primary" >ADD VEHICLE</a> --%>
			<a href="<spring:url value='/upload/uploadForm?vid=0' />" class="btn btn-primary" >ADD VEHICLE </a>
			<%-- <a href="<spring:url value='/upload/uploadForm?vid=3' />" class="btn btn-primary" >update VEHICLE WITH IMAGES</a> --%>
			</div></div>
			</div>
<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>

