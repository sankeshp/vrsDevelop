<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Vehicle</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/main/navigation.jsp" />
<!-- in add vehicle -->


<h3 align="center">${requestScope.mesg}</h3>
<%-- 	<s:form method="post" modelAttribute="vehicle">
		<table style=" margin: auto;">
			
			<tr>
				<td>Enter type</td>
				<td><s:input path="v_type" /></td>
			</tr>
			<tr>
				<td>Enter Category</td>
				<td><s:input path="v_category" /></td>
			</tr>
			<tr>
				<td>Enter Name</td>
				<td><s:input path="v_name" /></td>
			</tr>
			<tr>
				<td>Enter number</td>
				<td><s:input path="v_number" /></td>
			</tr>
			
			<tr>
				<td>Enter CC</td>
				<td><s:input path="v_cc" /></td>
			</tr>
			<tr>
				<td>Enter dayrate</td>
				<td><s:input path="v_day_rate" /></td>
			</tr>
			<tr>
				<td>Enter fuel</td>
				<td><s:input path="v_fuel" /></td>
			</tr>
			
			<tr>
				<td>Enter pic_path</td>
				<td><s:input path="v_pic_path" /></td>
			</tr>
			<tr>
				<td>Enter deposit</td>
				<td><s:input path="v_deposit"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="Add Vehicle" /></td>
			</tr>
		</table>
	</s:form> --%>
	<section class="features-icons">
    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Vehicle Registration</div>
        <div class="card-body">
          <s:form method="post" modelAttribute="vehicle" >
            <div class="form-group">
              <div class="form-label-group">
               <%--  <s:input type="text" id="inputType" path="v_type" class="form-control" placeholder="Vehicle Type" required="required" autofocus="autofocus"/> --%>
                 <s:select id="inputType" path="v_type" class="form-control" placeholder="Vehicle Type" required="required" autofocus="autofocus">
                     <s:option value = "car" label = "Car"/>
                     <s:option value = "bike" label = "Bike"/>
                  </s:select> 
                <label for="inputType">Vehicle Type</label>
              </div>
            </div>
            <div class="form-group"> 
              <div class="form-label-group">
            <%--     <s:input type="text" id="inputCategory" path="v_category" class="form-control" placeholder="Vehicle Category" required="required" autofocus="autofocus"/> --%>
                <s:select id="inputCategory" path="v_category" class="form-control" placeholder="Vehicle Category" required="required" autofocus="autofocus">
                     <s:option value = "suv" label = "Car: SUV"/>
                     <s:option value = "sedan" label = "Car: Sedan"/>
                     <s:option value = "sports" label = "Bike: Sports"/>
                     <s:option value = "moped" label = "Bike: Moped"/>
                  </s:select> 
                <label for="inputCategory">Vehicle Category</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="text" id="inputVname" path="v_name" class="form-control" placeholder="Vehicle Name" required="required" autofocus="autofocus"/>
                <label for="inputVname">Vehicle Name</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="text" id="inputNo" path="v_number" class="form-control" placeholder="Vehicle Number" required="required" autofocus="autofocus"/>
                <label for="inputNo">Vehicle Number</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="number" id="inputCC" path="v_cc" class="form-control" placeholder="Vehicle CC" required="required" autofocus="autofocus"/>
                <label for="inputCC">Vehicle CC</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="number" id="inputRate" path="v_day_rate" class="form-control" placeholder="Per Day Rate" required="required" autofocus="autofocus"/>
                <label for="inputRate">Per Day Rate</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="text" id="inputFuel" path="v_fuel" class="form-control" placeholder="Fuel Type" required="required"/>
                <label for="inputFuel">Fuel Type</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="text" id="inputPic" path="v_pic_path" class="form-control" placeholder="Pic Name" required="required" autofocus="autofocus" value="${param.img_name}"/>
                <label for="inputPic">Pic Name</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <s:input type="text" id="inputDeposite" path="v_deposit" class="form-control" placeholder="Vehicle Deposite" required="required" autofocus="autofocus"/>
                <label for="inputDeposite">Vehicle Deposite</label>
              </div>
            </div>
            <input class="btn btn-primary btn-block" type="submit" value="Add Vehicle" />
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