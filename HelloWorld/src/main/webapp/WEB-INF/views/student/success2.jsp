<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<base href="${pageContext.servletContext.contextPath }" />
</head>
<body>
	<h2>THÔNG TIN SINH VIÊN</h2>
	<p>${message }</p>
	<ul>
		<li>Họ và tên: ${student.name}</li>
		<li>Điểm trung bình: ${student.mark}</li>
		<li>Chuyên ngành: ${student.major}</li>
	</ul>
</body>
</html>