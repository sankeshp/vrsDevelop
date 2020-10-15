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
<!-- in feedbackdetails -->
<h3 align="center">Feedback List</h3>
	<div class="container">

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-12">
<table class="table table-striped">

<thead>
<tr>
<th scope="col">Id</th>
<th scope="col">Question 1</th>
<th scope="col">Answer 1</th>
<th scope="col">Question 2</th>
<th scope="col">Answer 2</th>
<th scope="col">Question 3</th>
<th scope="col">Answer 3</th>
<th scope="col">Rating</th>
<th scope="col">Order Id</th>

</tr>
</thead>	
		<c:forEach var="f" items="${requestScope.feedback_list}">

			<tr>
				<td>${f.f_id}</td>
				<td>${f.f_question1}</td>
				<td>${f.f_answer1}</td>
				<td>${f.f_question2}</td>
			 	<td>${f.f_answer2}</td>
			 	<td>${f.f_question3}</td>
			 	<td>${f.f_answer3}</td>
			 	<td>${f.f_rating}</td>
			 	<td>${f.myOrder.o_id}</td>
			 	
			</tr>
			
				
			</c:forEach></table>
			</div></div></div>
<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>