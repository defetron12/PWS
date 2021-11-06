<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<td>${employeeDetailsAdmin.empId}</td>
					<td>${employeeDetailsAdmin.empName}</td>
					<td>${employeeDetailsAdmin.empAge}</td>
					<td>${employeeDetailsAdmin.empEmail}</td>
					<td>${employeeDetailsAdmin.empGender}</td>
					<td>${employeeDetailsAdmin.empPhoneNumber}</td>
					<td>${employeeDetailsAdmin.empGrade}</td>
					<td>${employeeDetailsAdmin.empJoinDate}</td>
					<td>${employeeDetailsAdmin.empLocation}</td>
					<td>${employeeDetailsAdmin.empSalary}</td>

		<a class="btn btn-primary"
						href="updatedetails/${eda.empId}" role="button">Update</a>



</body>
</html>