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
	<h1>STUDEN MANAGER</h1>
	<form action="${pageContext.servletContext.contextPath}/update.htm"
		method="post">
		${message}
		<div>Họ và tên</div>
		<input name="name" value="${student.name}" />
		<div>Điểm trung bình</div>
		<input name="mark" value="${student.mark}"  />
		<div>Chuyên ngành</div>
		<label> <input name="major" type="radio" value="APP" ${student.major == 'APP' ? 'checked' : ''}/> Ứng
			dụng phần mềm
		</label> <label> <input name="major" type="radio" value="WEB" ${student.major == 'WEB' ? 'checked' : ''} />
			Thiết kế trang web
		</label>
		<hr>
		<button name="btnUpdate">Cập nhật</button>
	</form>
</body>
</html>