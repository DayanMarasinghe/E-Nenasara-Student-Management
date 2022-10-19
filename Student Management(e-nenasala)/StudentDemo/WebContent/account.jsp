<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="styles.css">
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
	
	<center><table>
		<c:forEach var="student" items="${Details}">
	
		<c:set var="id" value="${student.id}"/>
		<c:set var="name" value="${student.name}"/>
		<c:set var="email" value="${student.email}"/>
		<c:set var="username" value="${student.username}"/>
		<c:set var="password" value="${student.password}"/>
	
		<tr>
			<td>Student ID</td>
			<td>${student.id}</td>
		</tr>
		<tr>
			<td>Name</td>
			<td>${student.name}</td>
		</tr>
		<tr>
			<td>Email</td>
			<td>${student.email}</td>
		</tr>	
		<tr>
			<td>UserName</td>
			<td>${student.username}</td>
		</tr>
		<tr>
			<td>Password</td>
			<td>${student.password}</td>
		</tr>
	
		</c:forEach>
	</table></center>
	
	<c:url value="updateStudent.jsp" var="stdup">
		<c:param name="id" value="${id}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="username" value="${username}"/>
		<c:param name="password" value="${password}"/>
	</c:url>
	
	<div class="btn">
		<a href="${stdup}">
			<input type="button" name="update" value="Edit Profile">
		</a>
	
		<br><br>
	
		<c:url value="deleteStudent.jsp" var="stddelete">
			<c:param name="id" value="${id}"/>
			<c:param name="name" value="${name}"/>
			<c:param name="email" value="${email}"/>
			<c:param name="username" value="${username}"/>
			<c:param name="password" value="${password}"/>
		</c:url>
	
		<a href="${stddelete}">
			<input type="button" name="delete" value="Delete Account">
		</a>
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