<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Order</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/main/navigation.jsp" />
in update order

<h3 align="center">${requestScope.mesg}</h3>
	<%-- <s:form method="post" modelAttribute="orders">
		<table style=" margin: auto;">
			<tr>
				<td> ID</td>
				<td><s:input path="o_id" readonly="true"/></td>
			</tr>
			<tr>
				<td>Enter date</td>
				<td><s:input type="date" path="o_date" readonly="true" /></td>
			</tr>
			<tr>
				<td>Enter start time</td>
				<td><s:input type="date" path="o_start_time" /></td>
			</tr>
			<tr>
				<td>enter end time</td>
				<td><s:input type="date" path="o_end_time" /></td>
			</tr>
			<tr>
				<td>Enter total price</td>
				<td><s:input path="o_total_price" /></td>
			</tr>
			
			
			<tr>
				<td><input type="submit" value="Update Order" /></td>
			</tr>
			
		</table>
	</s:form> --%>
	<section class="features-icons">
    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Order Form</div>
        <div class="card-body">
          <s:form method="post" modelAttribute="orders">
           <div class="form-group">
              <div class="form-label-group">
                <s:input type="number" id="myid" path="o_id" class="form-control"  required="required" autofocus="autofocus"/>
                <label for="myid">Order Id</label>
              </div>
            </div>
          <div class="form-group">
              <div class="form-label-group">
                <s:input type="date" id="mydate" path="o_date" class="form-control"  required="required" autofocus="autofocus"/>
                <label for="mydate">Current Date</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="date" id="inputSDate" path="o_start_time" class="form-control" value="${sessionScope.start_date}" required="required" autofocus="autofocus"/>
                <label for="inputSDate">Start Date</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="date" id="inputEDate" path="o_end_time" class="form-control" value="${sessionScope.end_date}" required="required" autofocus="autofocus"/>
                <label for="inputEDate">End Date</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="number" id="tprice" path="o_total_price" class="form-control" required="required" autofocus="autofocus"/>
                <label for="tprice">Total Price</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="number" id="uid" path="myUser.u_id" class="form-control"  required="required" autofocus="autofocus"/>
                <label for="uid">User Id</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="number" id="vid" path="myVehicle.v_id" class="form-control"  required="required" autofocus="autofocus"/>
                <label for="vid">Vehicle Id</label>
              </div>
            </div>
            <input class="btn btn-primary btn-block" type="submit" value="Submit" />
          </s:form>
         
        </div>
      </div>
    </div>
    </section>
     <script src="<spring:url value='/bootstrap/vendor/jquery/jquery.min.js'/>"></script>
    <script src="<spring:url value='/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

    <!-- Core plugin JavaScript-->
    <script src="<spring:url value='/bootstrap/vendor/jquery-easing/jquery.easing.min.js'/>"></script>
<%-- <a href="<spring:url value='/main/home'/>">Back to home</a><br/> --%>
	<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>