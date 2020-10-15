<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/main/navigation.jsp" />
In Registration
<!-- <form method="post">

		<table>
		    <tr>
				<td>Enter First Name</td>
				<td><input type="text" name="u_fname" required/>*</td>
			</tr>
			<tr>
				<td>Enter Last Name</td>
				<td><input type="text" name="u_lname" required/>*</td>
			</tr>
			<tr>
				<td>Enter Aadhar Id</td>
				<td><input type="text" name="u_proof" required/>*</td>
			</tr>
			<tr>
				<td>Enter Email</td>
				<td><input type="email" name="u_email" required/>*</td>
			</tr>
			<tr>
				<td>Enter Mobile No</td>
				<td><input type="number" name="u_mobile" required/>*</td>
			</tr>
			<tr>
				<td>Enter Address</td>
				<td><input type="text" name="u_address" required/>*</td>
			</tr>	
				<tr>
				<td>Enter Password</td>
				<td><input type="password" name="u_password" required/>*</td>
			</tr>
			<tr>
				<td>Enter Mode</td>
				<td><input type="text" name="u_mode" value="user" required/>*</td>
			</tr>
			<tr>
				<td><input type="submit" value="REGISTRATION" /></td>
			</tr>
		</table>
	</form> -->
	<section class="features-icons">
    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">User Registration</div>
        <div class="card-body">
          <form method="post">
            <div class="form-group">
              <div class="form-label-group">
                <input type="text" id="inputFname" name="u_fname" class="form-control" placeholder="First Name" required="required" autofocus="autofocus">
                <label for="inputFname">First Name</label>
              </div>
            </div>
            <div class="form-group"> 
              <div class="form-label-group">
                <input type="text" id="inputLname" name="u_lname" class="form-control" placeholder="Last Name" required="required" autofocus="autofocus">
                <label for="inputLname">Last Name</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="text" id="inputAproof" name="u_proof" class="form-control" placeholder="Aadhar Id" required="required" autofocus="autofocus">
                <label for="inputAproof">Aadhar Id</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="email" id="inputEmail" name="u_email" class="form-control" placeholder="Email Address" required="required" autofocus="autofocus">
                <label for="inputEmail">Email Address</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="number" id="inputMno" name="u_mobile" class="form-control" placeholder="Mobile Number" required="required" autofocus="autofocus">
                <label for="inputMno">Mobile Number</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="text" id="inputAddr" name="u_address" class="form-control" placeholder="Address" required="required" autofocus="autofocus">
                <label for="inputAddr">Address</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="password" id="inputPassword" name="u_password" class="form-control" placeholder="Password" required="required">
                <label for="inputPassword">Password</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="text" id="inputMode" name="u_mode" class="form-control" placeholder="User Mode" required="required" autofocus="autofocus" value="user">
                <label for="inputMode">User Mode</label>
              </div>
            </div>
            <input class="btn btn-primary btn-block" type="submit" value="Login" />
          </form>
         
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