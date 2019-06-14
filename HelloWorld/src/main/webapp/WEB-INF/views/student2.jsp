<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<base href="${pageContext.servletContext.contextPath }" />
</head>
<body>
	<h1>STUDEN MANAGER</h1>
	<form:form
		action="${pageContext.servletContext.contextPath}/update.htm"
		modelAttribute="student">
		${message}
		<div>Họ và tên</div>
		<form:input path="name" />
		<div>Điểm trung bình</div>
		<form:input path="mark" />
		<div>Chuyên ngành</div>
		<%-- <form:radiobuttons path="major" items="${majors}" /> --%>

		<form:radiobuttons path="major" items="${majors2}" itemValue = "id" itemLabel = "name" />
		<hr>
		<button name="btnUpdate">Cập nhật</button>
	</form:form>
</body>
</html>