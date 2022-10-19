<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="styles.css">

	<script>
		
		function validateForm(){
			var name=document.myform.name.value;
			var pword=document.myform.pword.value;
			var email=document.myform.email.value;
			var uid=document.myform.uid.value;
			
			var x=document.myform.email.value;
			var atposition=x.indexOf("@");
			var dotposition=x.lastIndexOf(".");
			
			var pword=document.myform.pword.value;
			var pword2=document.myform.pword2.value;
			
			if(name==""){
				alert("Name can't be empty!");
				return false;
			}else if(email==""){
				alert("Email can't be empty!");
				return false;
			}else if(uid.length<5){
				alert("Username must be at least 5 characters long!");
				return false;
			}else if(pword.length<6){
				alert("Password must be at least 6 characters long!");
				return false;
			}else if(atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){
				alert("Please enter a valid email address!");
				return false;
			}else if(pword != pword2){
				alert("Password did not match! Try again!");
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
		<form name="myform" action="insert" method="post" onsubmit="return validateForm()">
			Name<input type="text" name="name"><br><br>
			Email<input type="text" name="email"><br><br>
			UserName<input type="text" name="uid"><br><br>
			Password<input type="password" name="pword"><br><br>
			Confirm Password<input type="password" name="pword2"><br><br>
		
			<input type="submit" name="submit" value="Register Student">
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