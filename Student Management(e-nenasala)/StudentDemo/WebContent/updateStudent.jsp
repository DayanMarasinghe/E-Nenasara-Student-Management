<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<div id="page-container">
<div id="content-wrap">
	<center>
		<img alt="logo" src="images/cover.png" width="30%" height="30%">
	</center>
	<hr>
	
	<div class="navigation">
		<ul>
			<li><a href = "log.jsp">Home</a></li>
			<li><a href = "#">Courses</a></li>
			<li><a href = "#">Lecture Panel</a></li>
			<li><a href = "#">About Us</a></li>
			<li><a href = "#">Contact Us</a></li>
		</ul>
	</div>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
	%>

	<div class="btn">
		<form action="update" method="post">
			Student ID <input type="text" name="stdid" value="<%= id %>" readonly><br><br>
			Name <input type="text" name ="name" value="<%= name %>"><br><br>
			Email <input type="text" name ="email" value="<%= email %>"><br><br>
			UserName <input type="text" name ="uname" value="<%= username %>"><br><br> 
			Password <input type="text" name ="pass" value="<%= password %>"><br><br> 
		
			<input type="submit" name="submit" value="Edit Details"><br>
		</form>
	</div>
	
	<div class="footer">
		<p>Copyrights©2020 E-Nanasara Online Education Platform</p>
		
		<ul>
			<li><a href="#">Facebook</a></li>
			<li><a href="#">Twitter</a></li>
			<li><a href="#">Instagram</a></li>
			<li><a href="#">RSS</a></li>
		</ul>
	</div>
	</div>
	</div>
</body>
</html>