<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="<spring:url value='/bootstrap/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css">

    <!-- Custom fonts for this template-->
    <link href="<spring:url value='/bootstrap/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="<spring:url value='/bootstrap/css/sb-admin.css'/>" rel="stylesheet" type="text/css">
</head>
<%-- <body>
<jsp:include page="/WEB-INF/views/main/navigation.jsp" />
In Login
<h3 align="center">${requestScope.mesg}</h3>
	<form method="post">
		<table style="background-color: ; margin: auto;">
			<tr>
				<td>Enter User Email</td>
				<td><input type="text" name="u_email" /></td>
			</tr>
			<tr>
				<td>Enter Password</td>
				<td><input type="password" name="u_password" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Login" /></td>
			</tr>
		</table>
	</form>
<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body> --%>
<body>
	<jsp:include page="/WEB-INF/views/main/navigation.jsp" />
	<h3 align="center">${requestScope.mesg}</h3><br/>
	<section class="features-icons">
    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">User Login</div>
        <div class="card-body">
          <form method="post">
            <div class="form-group">
              <div class="form-label-group">
                <input type="email" id="inputEmail" name="u_email" class="form-control" placeholder="Email address" required="required" autofocus="autofocus">
                <label for="inputEmail">Email address</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="password" id="inputPassword" name="u_password" class="form-control" placeholder="Password" required="required">
                <label for="inputPassword">Password</label>
              </div>
            </div>
            <div class="form-group">
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="remember-me">
                  Remember Password
                </label>
              </div>
            </div>
            <input class="btn btn-primary btn-block" type="submit" value="Login" />
          </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="<spring:url value='/main/registration'/>">Register an Account</a>
              <a class="d-block small" href="<spring:url value='/main/login'/>">Forgot Password?</a>
          </div>
        </div>
      </div>
    </div>
    </section>
	
    <!-- Bootstrap core JavaScript-->
  
	<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>