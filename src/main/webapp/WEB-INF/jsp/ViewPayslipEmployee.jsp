<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Details</title>
</head>


<link rel="icon" href="resources/img/image.png" type="image/x-icon">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

* {
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
}

body {
	justify-content: center;
	font-family: Helvetica;
	-webkit-font-smoothing: antialiased;
	width: 100%;
	
}

h2 {
	text-align: center;
	font-size: 30px;
	text-transform: uppercase;
	letter-spacing: 1px;
	color: black;
	padding: 25px 0;
}

button {
	outline: none;
	color: white;
	border-style: none;
}

Table Styles * /
 .table-wrapper {
	margin: 10px 70px 70px;
	
}

.fl-table {
	border-radius: 30px;
	font-size: 30px;
	font-weight: normal;
	border: none;
	width: 350%;
	max-width: 35%;
	white-space: nowrap;
	background-color: white;
}

.fl-table td, .fl-table th {
	text-align: left;
	padding: 10px;
}

.fl-table td {
	/* border-right: 1px solid #f8f8f8; */
	font-size: 25px;
}

nav {
	width: 100%;
	position: sticky !important;
	top: 0;
	left: 0;
	
	z-index: 10;
}

.navbar-brand {
	font-weight: bold;
	background: -webkit-linear-gradient(45deg, #845ec2, #d65db1, #ff6f91, #ff9671,
		#ffc75f, #f9f871);
	-webkit-background-clip: text;
	-webkit-text-fill-color: transparent;
	size: 20px;
	font-weight: 600;
}

.nav-link {
	color: white !important;
	border-top: 1px white transparent !important;
	text-align: center;
}

.nav-link:hover {
	color: white;
	border-top: 5px white !important;
}

section {
	width: 100%;
	min-height: 100vh;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">

			<a class="navbar-brand" href="#">Bank Application</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					 <li class="nav-item active ">
            <a class="nav-link" href="home">Return</a>
          </li>
					<li class="nav-item active "><a>
							<button class="btn btn-primary hidden-print"
								onclick="window.print()">
								<span class="glyphicon glyphicon-print" 
								 aria-hidden="true"></span>
								Print
							</button>
					</a></li>
				</ul>

			</div>
		</div>
	</nav>
<div class="print">
	<h2>Customer Details</h2>
	<div class="table-wrapper" id="printable-area">
		<table class="fl-table text-left" align="center"
			style="box-shadow: 0 8px 32px 0 rgba(31, 38, 135, .37); border-radius: 30px; border-left: 1px solid rgba(255, 255, 255, .3); border-top: 1px solid rgba(255, 255, 255, rgba(255, 255, 255, .3));">

			<tr>
				<td>Id :</td>
				<td>${employeedetails.empId}</td>
			</tr>

			<tr>
				<td>Name:</td>
				<td>${employeedetails.empName}</td>
			</tr>

			<tr>
				<td>Age:</td>
				<td>${employeedetails.empAge}</td>
			</tr>

			<tr>
				<td>Email:</td>
				<td>${employeedetails.empEmail}</td>
			</tr>

			<tr>
				<td>Gender:</td>
				<td>${employeedetails.empGender}</td>
			</tr>

			<tr>
				<td>Phone Number :</td>
				<td>${employeedetails.empPhoneNumber}</td>
			</tr>


			<tr>
				<td>Account open Date :</td>
				<td>${employeedetails.empJoinDate}</td>
			</tr>

			<tr>
				<td>Location:</td>
				<td>${employeedetails.empLocation}</td>
			</tr>

		
		</table>
	</div>
	</div>
		
	
</body>
