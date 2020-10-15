<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function demo()
{
let today = new Date().toISOString().substr(0, 10);
document.querySelector("#mydate").value = today;
var sdate='${sessionScope.start_date}';
var edate='${sessionScope.end_date}';
var sd1=sdate.split("-");
var ed1=edate.split("-")
//alert(sd1[2]);
//alert(ed1[2]);
var rate=parseInt('${sessionScope.vehicle_dtls.v_day_rate}');
var deposit=parseInt('${sessionScope.vehicle_dtls.v_deposit}');
var tp=rate*(ed1[2]-sd1[2]+1)+deposit;
//alert(tp);
document.querySelector("#tprice").value=tp;

}
 </script>
 <link href="<spring:url value='/bootstrap/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet" type="text/css">

    <!-- Custom fonts for this template-->
    <link href="<spring:url value='/bootstrap/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="<spring:url value='/bootstrap/css/sb-admin.css'/>" rel="stylesheet" type="text/css">
 
</head>
<body onload="demo()">
<jsp:include page="/WEB-INF/views/main/navigation.jsp" />
<%-- In Booking Form
${sessionScope.start_date}<br/>
${sessionScope.end_date}<br/>
${sessionScope.vehicle_dtls.v_id}<br/>
${sessionScope.user_dtls}<br/>
${sessionScope.vehicle_dtls.v_day_rate}<br/>
${sessionScope.vehicle_dtls.v_deposit}<br/>
date:<%= (new java.util.Date())%>
 --%>
<%-- <form method="post">

		<table>
		   <tr>
				<td>Current Date</td>
				<td><input type="date" name="o_date" id="mydate" required/>*</td>
			<tr> 
			
		    <tr>
				<td>Selected Start Date</td>
				<td><input type="date" id="date" name="o_start_time" value="${sessionScope.start_date}" required/>*</td>
			</tr>
			<tr>
				<td>Selected End Date</td>
				<td><input type="date" id="end_date" name="o_end_time" value="${sessionScope.end_date}" required/>*</td>
			</tr>
			<tr>
				<td>Your Total Amount is:-</td>
				<td><input type="text" id="tprice" name="o_total_price" required/>*</td>
			</tr>
			<tr>
				<td>The User Id</td>
				<td><input type="text" name="myUser.u_id" value="${sessionScope.user_dtls.u_id}" required/>*</td>
			</tr>
			<tr>
				<td>The Vehicle Id is</td>
				<td><input type="text" name="myVehicle.v_id" value="${sessionScope.vehicle_dtls.v_id}" required/>*</td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit" /></td>
			</tr>
		</table>
	</form> --%>
	<section class="features-icons">
    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Order Form</div>
        <div class="card-body">
          <form method="post">
          <div class="form-group">
              <div class="form-label-group">
                <input type="date" id="mydate" name="o_date" class="form-control"  required="required" autofocus="autofocus">
                <label for="inputSDate">Current Date</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="date" id="inputSDate" name="o_start_time" class="form-control" value="${sessionScope.start_date}" required="required" autofocus="autofocus">
                <label for="inputSDate">Start Date</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="date" id="inputEDate" name="o_end_time" class="form-control" value="${sessionScope.end_date}" required="required" autofocus="autofocus">
                <label for="inputEDate">End Date</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="number" id="tprice" name="o_total_price" class="form-control" required="required" autofocus="autofocus">
                <label for="tprice">Total Price</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="number" id="uid" name="myUser.u_id" class="form-control" value="${sessionScope.user_dtls.u_id}" required="required" autofocus="autofocus">
                <label for="uid">User Id</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="number" id="vid" name="myVehicle.v_id" class="form-control" value="${sessionScope.vehicle_dtls.v_id}" required="required" autofocus="autofocus">
                <label for="vid">Vehicle Id</label>
              </div>
            </div>
            <input class="btn btn-primary btn-block" type="submit" value="Confirm" />
               </form>
               <hr>
           <a href="<spring:url value='/main/vehicleList?vehicle=${sessionScope.vehicle_dtls.v_type}&vehicleCategory=${sessionScope.vehicle_dtls.v_category}'/>"  class="btn btn-primary">Cancel Here</a><br/>
     
        </div>
      </div>
    </div>
    </section>
   
	<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>