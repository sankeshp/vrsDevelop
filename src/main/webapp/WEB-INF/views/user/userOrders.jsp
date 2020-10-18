<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Orders</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/main/navigation.jsp" />
<!-- in userOrders<br/> -->
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
<th scope="col">Category</th>
<th scope="col">Name</th>
<th scope="col">Number</th>
<th scope="col">Update/Show Feedback</th>
<th scope="col">Feedback</th>
</tr>
</thead>

<c:forEach var="o" items="${requestScope.order_list}">

			<tr>
			    <td>${o.o_id}</td>
				<td>${o.o_date}</td>
				<td>${o.o_start_time}</td>
				<td>${o.o_end_time}</td>
				<td>${o.o_total_price}</td>
				<td>${o.myVehicle.v_category}</td>
				<td>${o.myVehicle.v_name}</td>
				<td>${o.myVehicle.v_number}</td>
				<td align="center"><a href="<spring:url value='/user/userFeedback?o_id=${o.o_id}'/>">${o.myfeedback.f_id}</a></td>
			    <td><a href="<spring:url value='/user/userFeedback?o_id=${o.o_id}'/>">Feedback</a></td>
			</tr>

</c:forEach>
</table>
</div>
</div>
</div>
<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>
