<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Feedback</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/main/navigation.jsp" />
in user feedback
User Order Feedback Form 
<s:form method="post" modelAttribute="feedback">
		<table style=" margin: auto;">
		<s:hidden path="f_id" readonly="true"/>
			<tr>
				<td>1. How would you rate our booking process?</td>
				<s:hidden path="f_question1" readonly="true" value="How would you rate our booking process?" />
				<td><s:radiobutton path="f_answer1" value="Good" />Good</td>
				<td><s:radiobutton path="f_answer1" value="Average" />Average</td>
				<td><s:radiobutton path="f_answer1" value="Bad" />Bad</td>
			</tr>
			<tr>
				<td>2. How would you rate the cleanliness of our vehicle</td>
				<s:hidden path="f_question2" readonly="true" value="How would you rate the cleanliness of our vehicle" />
				<td><s:radiobutton path="f_answer2" value="Good" />Good</td>
			    <td><s:radiobutton path="f_answer2" value="Average" />Average</td>
				<td><s:radiobutton path="f_answer2" value="Bad" />Bad</td>
			</tr>
			<tr>
				<td>3. Are you likely to recommend our car hire to family and friends?</td>
				<s:hidden path="f_question3" readonly="true" value="are you likely to recommend to family and friends?" />
				<td><s:radiobutton path="f_answer3" value="Good" />Good</td>
				<td><s:radiobutton path="f_answer3" value="Average" />Average</td>
				<td><s:radiobutton path="f_answer3" value="Bad" />Bad</td>
			</tr>
			<tr>
				<td>Enter Overall Rating</td>
				<td><s:radiobutton path="f_rating" value="1" />1</td>
				<td><s:radiobutton path="f_rating" value="2" />2</td>
				<td><s:radiobutton path="f_rating" value="3" />3</td>
				<td><s:radiobutton path="f_rating" value="4" />4</td>
				<td><s:radiobutton path="f_rating" value="5" />5</td>
			</tr>
			<tr>
				<td>Order ID</td>
				<td><s:input path="myOrder.o_id" readonly="true" value="${param.o_id}"/></td>
			</tr>
			<tr>
				<td><input type="submit" value="Submit Feedback" /></td>
			</tr>
		</table>
	</s:form>
	<jsp:include page="/WEB-INF/views/main/footer.jsp" />
</body>
</html>