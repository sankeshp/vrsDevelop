<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/main/navigation.jsp" />
<%--in bookingSummary<br/>
 ${requestScope.mesg}<br/>
${requestScope.order_dtl}<br/>
Order Placed By User ${sessionScope.user_dtls}<br/>
For a Vehicle ${sessionScope.vehicle_dtls}<br/> --%>
<div class="container">

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-12">

          <!-- Title -->
          <hr>
          <h1 class="mt-4">${requestScope.mesg}</h1>

       
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
			      <td>Order Id</td>
			      <td>${sessionScope.order_dtls.o_id}</td>
			    </tr>
			    <tr>
			      <th scope="row">2</th>
			      <td>Order Start Date</td>
			      <td>${sessionScope.order_dtls.o_start_time}</td>
			    </tr>
			    <tr>
			      <th scope="row">3</th>
			      <td>Order End Date</td>
			      <td>${sessionScope.order_dtls.o_end_time}</td>
			    </tr>
			    <tr>
			      <th scope="row">4</th>
			      <td>Total Price</td>
			      <td>${sessionScope.order_dtls.o_total_price}</td>
			    </tr>
			    <tr>
			      <th scope="row">5</th>
			      <td>User Name</td>
			      <td>${sessionScope.user_dtls.u_fname} ${sessionScope.user_dtls.u_lname}</td>
			    </tr>
			    <tr>
			      <th scope="row">6</th>
			      <td>Vehicle Name</td>
			      <td>${sessionScope.vehicle_dtls.v_name}</td>
			    </tr>
			    <tr>
			      <th scope="row">6</th>
			      <td>Vehicle Number</td>
			      <td>${sessionScope.vehicle_dtls.v_number}</td>
			    </tr>
			  </tbody>
			</table>
          
          
          <hr>
         
          <hr>
          <a href="<spring:url value='/main/home'/>" class="btn btn-primary">Back to home</a><br/>
           <hr>
          <a href="<spring:url value='/email/send_mail'/>" class="btn btn-primary">Mail</a><br/>
  <hr>
</div>
</div>
</div>

<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>