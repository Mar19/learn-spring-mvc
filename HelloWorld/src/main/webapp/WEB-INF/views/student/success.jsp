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
	<ul>
		<li>Họ và tên: ${name}</li>
		<li>Điểm trung bình: ${mark}</li>
		<li>Chuyên ngành: ${major}</li>
	</ul>
</body>
</html>