<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vehicle Details</title>
<link href="<spring:url value='/bootstrap/css/bootstrap.min.css'/>" type="text/css" rel="stylesheet" />
</head>
<body>
<jsp:include page="/WEB-INF/views/main/navigation.jsp" />
<%-- in vehicle details<br/>
${param.status}<br/>
${sessionScope.start_date}<br/>
${sessionScope.end_date}<br/>
${sessionScope.vehicle_dtls}<br/>
${sessionScope.vehicle_dtls.v_id}<br/> --%>
<div class="container">

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-12">

          <!-- Title -->
          <h1 class="mt-4">${sessionScope.vehicle_dtls.v_name}</h1>

         

          <hr>

          <!-- Date/Time -->
          <p>Available on ${sessionScope.start_date} and ${sessionScope.end_date}</p>

          <hr>

          <!-- Preview Image -->
          <img class="img-fluid rounded" src="../bootstrap/images/${sessionScope.vehicle_dtls.v_pic_path}" alt="">

          <hr>

          <!-- Post Content -->
			          <table class="table table-striped">
			  <thead>
			    <tr>
			      <th scope="col">#</th>
			      <th scope="col">Property</th>
			      <th scope="col">Value</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th scope="row">1</th>
			      <td>Vehicle Id</td>
			      <td>${sessionScope.vehicle_dtls.v_id}</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			      <td>Vehicle Category</td>
			      <td>${sessionScope.vehicle_dtls.v_category}</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			      <td>Vehicle Number</td>
			      <td>${sessionScope.vehicle_dtls.v_number}</td>
			    </tr>
			    <tr>
			      <th scope="row">4</th>
			      <td>Vehicle CC</td>
			      <td>${sessionScope.vehicle_dtls.v_cc}</td>
			    </tr>
			    <tr>
			      <th scope="row">5</th>
			      <td>Vehicle Per Day Rate</td>
			      <td>${sessionScope.vehicle_dtls.v_day_rate}</td>
			    </tr>
			    <tr>
			      <th scope="row">6</th>
			      <td>Vehicle Fuel Type</td>
			      <td>${sessionScope.vehicle_dtls.v_fuel}</td>
			    </tr>
			    <tr>
			      <th scope="row">6</th>
			      <td>Vehicle Fuel Type</td>
			      <td>${sessionScope.vehicle_dtls.v_deposit}</td>
			    </tr>
			  </tbody>
			</table>
          
          
          <hr>
    <a href="<spring:url value='/user/bookingForm'/>" class="btn btn-primary">Book Here</a>    
     <a href="<spring:url value='/main/vehicleList?vehicle=${sessionScope.vehicle_dtls.v_type}&vehicleCategory=${sessionScope.vehicle_dtls.v_category}'/>"  class="btn btn-primary">Cancel Here</a><br/>
<hr>
</div>
</div>
</div>
<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>