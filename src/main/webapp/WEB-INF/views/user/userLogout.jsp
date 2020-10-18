<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Logout</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/main/navigation.jsp" />
<h4>Hello , ${requestScope.user_dtls.u_email}</h4>
	<h4>You have logged out successfully n will be taken to index page
		shortly....</h4>
		
<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>