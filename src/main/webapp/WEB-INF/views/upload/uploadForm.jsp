<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
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
${requestScope.mesg}
<!-- <form method="post" enctype="multipart/form-data">
		Choose File to Upload : <input type="file" name="contents" /> <input
			type="submit"  />
	</form> -->
	<section class="features-icons">
    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Image Upload</div>
        <div class="card-body">
          <form method="post" enctype="multipart/form-data">
            <div class="form-group">
              <div class="form-label-group">
                <input type="file" id="inputImg" name="contents" class="form-control" placeholder="Upload Image" required="required" autofocus="autofocus">
                <label for="inputImg">Upload Image</label>
              </div>
            </div>
            
            <input class="btn btn-primary btn-block" type="submit" value="Upload" />
            
          </form>
          <br/>
           <a href="<spring:url value='/admin/vehicleDetails'/>" class="btn btn-primary">Cancel</a>
            <c:if test="${param.vid ne 0}">
           <a href="<spring:url value='/admin/updateVehicle?vid=${param.vid}'/>" class="btn btn-primary ">Skip</a>  
            </c:if>
        </div>
      </div>
    </div>
    </section>
	
	 
	<jsp:include page="/WEB-INF/views/main/footer.jsp" /> 
	
</body>
</html>