<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./css/homestyle.css">
<meta charset="ISO-8859-1">
<title>View User</title>
<style>
table {
	border-bottom: 5px solid red;
	border-right: 5px solid red;
	border-left: 5px solid #B1FCF7;
	border-top: 5px solid #B1FCF7;
}

body {
	background: linear-gradient(to bottom, #B1FCF7 0%, black 100%);
	background-attachment: fixed;
	height: 1000px;
}

body, h1, h2, h3, h4, h5, h6 {
	font-family: "Lato", sans-serif
}

.w3-bar, h1, button {
	font-family: "Montserrat", sans-serif
}

.fa-anchor, .fa-coffee {
	font-size: 200px
}
</style>
</head>
<body>
	<div class="container">
		<div class="w3-top">
			<div class="w3-bar w3-red w3-card w3-right-align w3-large">
				<a
					class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red"
					href="javascript:void(0);" onclick="myFunction()"
					title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a> <a
					href="adminhome.html"
					class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Home</a>
				<a href="viewuser.jsp"
					class="w3-bar-item w3-button w3-padding-large w3-white">View
					User</a> <a href="sellingrequest.jsp"
					class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Selling
					Request</a> <a href="viewfeedback.jsp"
					class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">View
					Feedback</a> <a href="login.html"
					class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">LOGOUT</a>

			</div>

		</div>
		<header class="w3-container  w3-center" style="padding: 128px 16px;">

			<%@page import="demo.RegistrationDao,demo.*,java.util.*"%>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

			<h1 style="color: black">
				<b><u>Users List</u></b>
			</h1>

			<%
			List<User> list = RegistrationDao.getAllUsers();
			request.setAttribute("list", list);
			%>

			<table border="1" width="90%"
				style="margin-left: auto; margin-right: auto; background: linear-gradient(to bottom, #f44336 0%, #B1FCF7 100%);">
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Age</th>
					<th>Address</th>
					<th>Phone number</th>
					<th>Email</th>
					<th>Location</th>
					<th>Gender</th>
				</tr>
				<c:forEach items="${list}" var="u">
					<tr>
						<td>${u.getId()}</td>
						<td>${u.getName()}</td>
						<td>${u.getAge()}</td>
						<td>${u.getAddress()}</td>
						<td>${u.getPhone()}</td>
						<td>${u.getEmail()}</td>
						<td>${u.getLocation()}</td>
						<td>${u.getGender()}</td>
						<%-- <td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
						<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td> --%>
					</tr>
				</c:forEach>
			</table>
			<br />



		</header>
	</div>
</body>
</html>