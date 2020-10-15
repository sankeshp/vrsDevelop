<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<spring:url value='/bootstrap/css/bootstrap.min.css'/>" type="text/css" rel="stylesheet" />

</head>
<body>
 <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
      <div class="container">
        <a class="navbar-brand" href="<spring:url value="/"> </spring:url>" >Vehicle Rental System</a>
        <ul class="navbar-nav ml-auto">  
        <li class="nav-item active">
              <a class="nav-link" href="<spring:url value='/main/home'/>" > Home </a>
        </li>
         </ul>
        <!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
        </button> -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
         <ul class="navbar-nav ml-auto">
            
           
            <c:if test="${not empty sessionScope.user_dtls}">
             
            <li class="nav-item">
              <a class="nav-link" href="#">Welcome ${sessionScope.user_dtls.u_email}</a>
            </li>
            
            <c:if test="${sessionScope.user_dtls.u_mode eq 'user'}">
           <%--   <li class="nav-item">
              <a class="nav-link" href="<spring:url value='/user/userHome'/>">User Home</a>
            </li> --%>
           <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          User
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="<spring:url value='/user/userProfile'/>">Profile Update</a>
          <a class="dropdown-item" href="<spring:url value='/user/userOrders'/>">Orders List</a>
         
        </div>
      </li>
             </c:if>
             
              <c:if test="${sessionScope.user_dtls.u_mode eq 'admin'}">
            <%--  <li class="nav-item">
              <a class="nav-link" href="<spring:url value='/admin/adminHome'/>">Admin Home</a>
            </li> --%>
             <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          Admin
		        </a>
		        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
		          <a class="dropdown-item" href="<spring:url value='/admin/userDetails'/>">Users List</a>
		          <a class="dropdown-item" href="<spring:url value='/admin/vehicleDetails'/>">Vehicle List</a>
		          <a class="dropdown-item" href="<spring:url value='/admin/feedbackDetails'/>">Feedback List</a>
		          <a class="dropdown-item" href="<spring:url value='/admin/orderDetails'/>">Orders List</a>
		         
		        </div>
		      </li>
             </c:if>
             
             <li class="nav-item">
              <a class="nav-link" href="<spring:url value='/user/userLogout'/>">Logout</a>
            </li>
            
            </c:if>
            <c:if test="${empty sessionScope.user_dtls}">
            <li class="nav-item">
              <a class="nav-link" href="<spring:url value='/main/login'/>">LogIn Here</a>
            </li>
             <li class="nav-item">
              <a class="nav-link" href="<spring:url value='/main/registration'/>">Sign Up Here</a>
            </li>
            </c:if>
             <li class="nav-item">
              <a class="nav-link" href="#">About Us</a>
            </li>
           
          </ul>
        </div>
      </div>
    </nav>
     <script src="<spring:url value='/bootstrap/vendor/jquery/jquery.min.js'/>"></script>
    <script src="<spring:url value='/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

    <!-- Core plugin JavaScript-->
    <script src="<spring:url value='/bootstrap/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
</body>
</html>