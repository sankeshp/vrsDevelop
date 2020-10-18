<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<title>Vehicle List</title>
<link href="<spring:url value='/bootstrap/css/bootstrap.min.css'/>" type="text/css" rel="stylesheet" />
<%-- <link href="<spring:url value='css/1-col-portfolio.css'/>" type="text/css" rel="stylesheet" /> --%>
</head>
<body>
<jsp:include page="/WEB-INF/views/main/navigation.jsp" />
<%-- in Vehicle list Page
${param.vehicle}
${param.vehicleCategory} --%>
<%-- ${requestScope.vehicle_list} --%>
<!-- <table style="background-color: ; margin: auto;" border="1">
<tr>
<th>Id</th><th>Model</th><th>Fuel Type</th><th>CC</th><th>Image</th><th>Availability</th>
</tr> -->
<div class="container">
<hr>
		<c:forEach var="v" items="${requestScope.vehicle_list}">

			<%-- <tr>
			    <td>${v.v_id}</td>
				<td>${v.v_name}</td>
				<td>${v.v_fuel}</td>
				<td>${v.v_cc}</td>
				<td>${v.v_pic_path}</td>
				<td><a href="<spring:url value='/main/availability?v_id=${v.v_id}'/>">Check Availability</a></td>
			</tr> --%>
   <div class="row">
        <div class="col-md-7">
          <a href="#">
            <img class="img-fluid rounded mb-3 mb-md-0" src="../bootstrap/images/${v.v_pic_path}" alt="">
          </a>
        </div>
        <div class="col-md-5">
          <h3>${v.v_name}</h3>
        Vehicle Id :- ${v.v_id}<br/>
        Vehicle Fuel :- ${v.v_fuel}<br/>
        Vehicle CC :- ${v.v_cc}<br/>
          <a class="btn btn-primary" href="<spring:url value='/main/availability?v_id=${v.v_id}'/>">Check Availability</a>
        </div>
      </div>
           <hr>
</c:forEach>
</div>
	<!-- </table> -->
<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>