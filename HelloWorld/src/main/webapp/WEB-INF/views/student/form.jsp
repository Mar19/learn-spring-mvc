<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<base href="${pageContext.servletContext.contextPath}" />
</head>
<body>
	<h2>SINH VIÊN POLY</h2>
	<form action="${pageContext.servletContext.contextPath}/student/save.htm" method="post">
	
		<div>Họ và tên</div>
		<input name="name">

		<div>Điểm trung bình</div>
		<input name="mark">
		
		<div>Chuyên ngành</div>
		<label>
			<input name="major" type="radio" value="APP">
			Ứng dụng phần mềm
		</label>
		<label>
			<input name="major" type="radio" value="WEB">
			Thiết kế trang web
		</label>
		
		<hr>
		<button>Lưu</button>
	</form>
</body>
</html>