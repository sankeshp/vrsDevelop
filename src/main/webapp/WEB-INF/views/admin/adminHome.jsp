<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/main/navigation.jsp" />
<a href="<spring:url value='/admin/userDetails'/>">Show user details</a><br/>
<a href="<spring:url value='/admin/vehicleDetails'/>">Show vehicle details</a><br/>
<a href="<spring:url value='/admin/feedbackDetails'/>">Show feedback details</a><br/>
<a href="<spring:url value='/admin/orderDetails'/>">Show order details</a><br/>
In AdminHome
<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>