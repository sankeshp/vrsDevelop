<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<spring:url value='/bootstrap/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css">

    <!-- Custom fonts for this template-->
    <link href="<spring:url value='/bootstrap/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="<spring:url value='/bootstrap/css/sb-admin.css'/>" rel="stylesheet" type="text/css">

</head>
<body>
  <jsp:include page="/WEB-INF/views/main/navigation.jsp" />
<!-- in availability -->
<section class="features-icons">
<div class="container">

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-12">

          <!-- Title -->
          <h1 class="mt-4">${requestScope.mesg}</h1>

       
          <hr>

<%-- <form method="post">
		<table style="background-color: ; margin: auto;">
			<tr>
				<td>Enter Start Date</td>
				<td><input type="date" name="start_date" required="required"/></td>
			</tr>
			<tr>
				<td>Enter End Date</td>
				<td><input type="date" name="end_date" required="required"/>
				<input type="hidden" name="v_id" value="${param.v_id}"/>
				</td>
			</tr>			
			<tr>
				<td><input type="submit" value="Proceed" /></td>
			</tr>
		</table>
	</form> --%>
	

      <div class="card card-login mx-auto mt-5">
        <div class="card-header">User Login</div>
        <div class="card-body">
          <form method="post">
            <div class="form-group">
              <div class="form-label-group">
                <input type="date" id="inputSDate" name="start_date" class="form-control" placeholder="Email address" required="required" autofocus="autofocus">
                <label for="inputSDate">Enter Start Date</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="date" id="inputEDate" name="end_date" class="form-control" placeholder="Email address" required="required" autofocus="autofocus">
                <label for="inputEDate">Enter End Date</label>
              </div>
            </div>
            <input class="btn btn-primary btn-block" type="submit" value="Check" />
          </form>
         
        </div>
      </div>
    </div>
  
	</div>
	</div>
	
	  </section>
    <!-- Bootstrap core JavaScript-->
    <script src="<spring:url value='/bootstrap/vendor/jquery/jquery.min.js'/>"></script>
    <script src="<spring:url value='/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

    <!-- Core plugin JavaScript-->
    <script src="<spring:url value='/bootstrap/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
	<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>