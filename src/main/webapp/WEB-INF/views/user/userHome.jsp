<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Home</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/main/navigation.jsp" />

in userHome
<h3 align="center">${requestScope.mesg}</h3><br/>
Welcome, ${sessionScope.user_dtls} <br/>
<%-- <a href="<spring:url value='/main/home'/>">Back to home</a><br/> --%>
<a href="<spring:url value='/user/userOrders'/>">Orders Details</a><br/>
<%-- <a href="<spring:url value='/user/showFeedback'/>">Feedback Details</a><br/> --%>
<a href="<spring:url value='/user/userProfile'/>">User Details</a><br/>
<%-- <a href="<spring:url value='/user/userLogout'/>">Logout</a><br/> --%>
<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>