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

<h3 align="center">Orders List</h3>
<div class="container">

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-12">
<table class="table table-striped">

<thead>
<tr>
<th scope="col">Id</th>
<th scope="col">Date</th>
<th scope="col">Start Date</th>
<th scope="col">End Date</th>
<th scope="col">Total Price</th>
<th scope="col">User Id</th>
<th scope="col">Vehicle Id</th>
<th scope="col">Update</th>
<th scope="col">Delete</th>
</tr>
</thead>		
		<c:forEach var="o" items="${requestScope.order_list}">

			<tr>
				<td>${o.o_id}</td>
				<td>${o.o_date}</td>
				<td>${o.o_start_time}</td>
				<td>${o.o_end_time}</td>
			 	<td>${o.o_total_price}</td>
			 	<td>${o.myUser.u_id}</td>
			 	<td>${o.myVehicle.v_id}</td>
			 	<%-- <td>${f.myOrder.o_id}</td> --%>
			 	<td><a href="<spring:url value='/admin/updateOrder?oid=${o.o_id}'/>">Update</a></td>
			 	<td><a href="<spring:url value='/admin/deleteOrder?o_id=${o.o_id}'/>">Delete</a></td>
			 	
			</tr>
			
				
			</c:forEach></table>
	</div>
	</div>
	</div>		

<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>