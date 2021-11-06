<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>View All Customer</title>
 <link rel = "icon" href = "resources/img/image.png" type = "image/x-icon">
   
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
 @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
   
* {
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
}

body {
	font-family: Helvetica;
	-webkit-font-smoothing: antialiased;
	height: 100vh;
	width: 100%;
	
}

h2 {
	text-align: center;
	font-size: 18px;
	text-transform: uppercase;
	letter-spacing: 1px;
	color: white;
	padding: 30px 0;
}

button {
	outline: none;
	color: white;
	border-style: none;
}

/* Table Styles */
.table-wrapper {
	margin: 10px 70px 70px;
	box-shadow: 0px 35px 50px rgba(0, 0, 0, 0.2);
}

.fl-table {
	border-radius: 5px;
	font-size: 12px;
	font-weight: normal;
	border: none;
	border-collapse: collapse;
	width: 100%;
	max-width: 100%;
	white-space: nowrap;
	background-color: white;
}

.fl-table td, .fl-table th {
	text-align: center;
	padding: 8px;
}

.fl-table td {
	border-right: 1px solid #f8f8f8;
	font-size: 12px;
}

.fl-table thead th {
	color: #ffffff;
	background: #4FC3A1;
}

.fl-table thead th:nth-child(odd) {
	color: #ffffff;
	background: #324960;
}

.fl-table tr:nth-child(even) {
	background: #F8F8F8;
}

/* Responsive */
@media ( max-width : 767px) {
	.fl-table {
		display: block;
		width: 100%;
	}
	.table-wrapper:before {
		content: "Scroll horizontally >";
		display: block;
		text-align: right;
		font-size: 11px;
		color: white;
		padding: 0 0 10px;
	}
	.fl-table thead, .fl-table tbody, .fl-table thead th {
		display: block;
	}
	.fl-table thead th:last-child {
		border-bottom: none;
	}
	.fl-table thead {
		float: left;
	}
	.fl-table tbody {
		width: auto;
		position: relative;
		overflow-x: auto;
	}
	.fl-table td, .fl-table th {
		padding: 20px .625em .625em .625em;
		height: 60px;
		vertical-align: middle;
		box-sizing: border-box;
		overflow-x: hidden;
		overflow-y: auto;
		width: 120px;
		font-size: 13px;
		text-overflow: ellipsis;
	}
	.fl-table thead th {
		text-align: left;
		border-bottom: 1px solid #f7f7f9;
	}
	.fl-table tbody tr {
		display: table-cell;
	}
	.fl-table tbody tr:nth-child(odd) {
		background: none;
	}
	.fl-table tr:nth-child(even) {
		background: transparent;
	}
	.fl-table tr td:nth-child(odd) {
		background: #F8F8F8;
		border-right: 1px solid #E6E4E4;
	}
	.fl-table tr td:nth-child(even) {
		border-right: 1px solid #E6E4E4;
	}
	.fl-table tbody td {
		display: block;
		text-align: center;
	}
}

nav{
    width: 100%;
    position: sticky !important;
    top: 0;
    left: 0;
    box-shadow: 0px 0px 8px rgba(0,0,0,.5);
    z-index: 10;
    
}

.navbar-brand{
    font-weight: bold;
    background: -webkit-linear-gradient(45deg,#845ec2,#d65db1,#ff6f91,#ff9671,#ffc75f,#f9f871);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    size: 20px;
    font-weight: 600;
}
.nav-link{
    color: white !important;
    border-top: 1px white transparent !important;
    text-align: center;
}
.nav-link:hover{
    color: white;
    border-top: 5px white !important;
}
section{
    width: 100%;
    min-height: 100vh;
}

</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
     
      <a class="navbar-brand" href="#">Bank Application</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
          <li class="nav-item active ">
            <a class="nav-link" href="home">Return</a>
          </li>
        
        </ul>
        
      </div>
    </div>
  </nav>
	<h2>Cusotmer Details</h2>
	<div class="table-wrapper">
		<table class="fl-table">

			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Age</th>
				<th>Email</th>
				<th>Gender</th>
				<th>Phone Number</th>
				
				<th>Date of Joining</th>
				<th>Location
				<th>Salary</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>


			<c:forEach items="${employeeDetailsAdmins}"
				var="employeeDetailsAdmin">
				<tr>
					<td>${employeeDetailsAdmin.empId}</td>
					<td>${employeeDetailsAdmin.empName}</td>
					<td>${employeeDetailsAdmin.empAge}</td>
					<td>${employeeDetailsAdmin.empEmail}</td>
					<td>${employeeDetailsAdmin.empGender}</td>
					<td>${employeeDetailsAdmin.empPhoneNumber}</td>
					
					<td>${employeeDetailsAdmin.empJoinDate}</td>
					<td>${employeeDetailsAdmin.empLocation}</td>
					<td>${employeeDetailsAdmin.empSalary}</td>

					<td><a class="btn btn-primary"
						href="updatedetails/${employeeDetailsAdmin.empId}" role="button">Update</a></td>
						<td><a class="btn btn-danger"
						href="deleteEmployee/${employeeDetailsAdmin.empId}" role="button">Delete</a></td>
				</tr>
			</c:forEach>

		</table>
		</div>
	
</body>
</html>


