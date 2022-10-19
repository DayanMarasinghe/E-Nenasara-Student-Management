<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="styles.css">

	<script>
		function validateLogin(){
			var uid=document.myform.uid.value;
			var pword=document.myform.pword.value;
			
			if(uid==""){
				alert("Username field cannot be empty!");
				return false;
			}else if(pword==""){
				alert("Password field cannot be empty!");
				return false;
			}
		}
	</script>

</head>
<body>
	
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
	
	<div class="btn">
		<form action="login" method="post" name="myform" onsubmit="return validateLogin()">
			UserName <input type="text" name="uid"><br><br>
			Password <input type="password" name="pword"><br><br>
		
			<input type="submit" name="submit" value="Login">
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
	
</body>
</html>