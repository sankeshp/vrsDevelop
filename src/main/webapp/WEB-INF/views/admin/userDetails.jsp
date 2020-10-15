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
<!-- in user details -->

<h3 align="center">Users List</h3>
<div class="container">

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-12">
<table class="table table-striped">

<thead>
<tr>
<th scope="col">Id</th>
<th scope="col">Address</th>
<th scope="col">Email</th>
<th scope="col">First Name</th>
<th scope="col">Last Name</th>
<th scope="col">Mobile</th>
<th scope="col">Mode</th>
<th scope="col">Password</th>
<th scope="col">Id Proof</th>
<th scope="col">Update</th>
<th scope="col">Delete</th>
</tr>
</thead>	
		<c:forEach var="u" items="${requestScope.users_list}">

			<tr>
				<td>${u.u_id }</td>
				<td>${u.u_address}</td>
				<td>${u.u_email}</td>
				<td>${u.u_fname}</td>
			 	<td>${u.u_lname}</td>
			 	<td>${u.u_mobile}</td>
			 	<td>${u.u_mode}</td>
			 	<td>${u.u_password}</td>
			 	<td>${u.u_proof}</td>
				<td><a href="<spring:url value='/admin/updateUser?uid=${u.u_id}'/>">Update</a></td>
				<td><a href="<spring:url value='/admin/deleteUser?uid=${u.u_id}'/>">Delete</a></td>
			</tr>
			
				
			</c:forEach></table>
</div>
</div>
</div>		
<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>


