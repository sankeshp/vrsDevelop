<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/main/navigation.jsp" />
<h3 align="center">${requestScope.mesg}</h3>
<%-- 	<s:form method="post" modelAttribute="users">
		<table style=" margin: auto;">
			<tr>
				<td>Your ID</td>
				<td><s:input path="u_id" readonly="true"/></td>
			</tr>
			<tr>
				<td>Enter User Email</td>
				<td><s:input path="u_email" readonly="true" /></td>
			</tr>
			<tr>
				<td>Enter Password</td>
				<td><s:password path="u_password" showPassword="true"/></td>
			</tr>
			<tr>
				<td>Enter User First Name</td>
				<td><s:input path="u_fname" /></td>
			</tr>
			<tr>
				<td>Enter User Last Name</td>
				<td><s:input path="u_lname" /></td>
			</tr>
			
			<tr>
				<td>Enter City</td>
				<td><s:input path="u_address" /></td>
			</tr>
			<tr>
				<td>Enter Phone Number</td>
				<td><s:input path="u_mobile" /></td>
			</tr>
			<tr>
				<td>Enter Role</td>
				<td><s:input path="u_mode" readonly="true"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="Update User" /></td>
			</tr>
		</table>
	</s:form> --%>
	<section class="features-icons">
    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">User Profile</div>
        <div class="card-body">
          <s:form method="post" modelAttribute="users">
           <div class="form-group">
              <div class="form-label-group">
                <s:input type="text" id="inputFname" path="u_id" class="form-control"  required="required" autofocus="autofocus" readonly="true"/>
                <label for="inputFname">User Id</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="text" id="inputFname" path="u_fname" class="form-control" required="required" autofocus="autofocus"/>
                <label for="inputFname">First Name</label>
              </div>
            </div>
            <div class="form-group"> 
              <div class="form-label-group">
                <s:input type="text" id="inputLname" path="u_lname" class="form-control" required="required" autofocus="autofocus"/>
                <label for="inputLname">Last Name</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="text" id="inputAproof" path="u_proof" class="form-control" required="required" autofocus="autofocus"/>
                <label for="inputAproof">Aadhar Id</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="email" id="inputEmail" path="u_email" class="form-control" required="required" autofocus="autofocus" readonly="true"/>
                <label for="inputEmail">Email Address</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="number" id="inputMno" path="u_mobile" class="form-control"  required="required" autofocus="autofocus"/>
                <label for="inputMno">Mobile Number</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="text" id="inputAddr" path="u_address" class="form-control"  required="required" autofocus="autofocus"/>
                <label for="inputAddr">Address</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="password" id="inputPassword" path="u_password" class="form-control" required="required"/>
                <label for="inputPassword">Password</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="text" id="inputMode" path="u_mode" class="form-control"  required="required" autofocus="autofocus" value="user" readonly="true"/>
                <label for="inputMode">User Mode</label>
              </div>
            </div>
            <input class="btn btn-primary btn-block" type="submit" value="Update" />
          </s:form>
         
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