<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Detail Update</title>
<link rel="stylesheet" href="style.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

h3 {
	font-size: 40px;
	text-align: center;
	color: black;
	letter-spacing: 3px;
	margin-top: 5%;
	opacity: .6;
}

body {
	height: 80%;
	width: 80%;
	display: flex;
	justify-content: center;
	align-items: center;
	
}

form {
	height: 65%;
	width: 50%;
	display: flex;
	flex-direction: column;
	background: white;
}

label {
	font-size: 20px;
	color: black;
	margin-left: 10%;
	opacity: .6;
	display: flex;
	flex-direction: column;
	margin-top: 2%;
}

input {
	width: 80%;
	margin: 3% auto;
	background: transparent;
	border-style: none;
	outline: none;
	border-bottom: 1px solid black;
	opacity: .6;
	margin-bottom: 8%;
	color: black;
}

button {
	
	outline: none;
	width: 50%;
	margin: 3% auto;
	color: black;
	border-style: none;
	padding: 2%;
	border-radius: 30px;
	
	border-top: rgba(255, 255, 255, 0.06);
	border-left: rgba(255, 255, 255, 0.06);
}

select {
	outline: none;
	width: 50%;
	margin: 3% auto;
	border-style: none;
	padding: 2%;
	box-shadow: 3px 3px 5px rgba(31, 38, 135, 0.37);
	border-top: rgba(255, 255, 255, 0.06);
	border-left: rgba(255, 255, 255, 0.06);
}
</style>
<body>
	<form:form action="/saveupdate" modelAttribute="employeeupdate"
		enctype="multipart/form-data"
		style="box-shadow:0 8px 32px 0 rgba(31 ,38,135,.37); border-radius: 30px;border-left: 1px solid rgba(255,255,255,.3) ;border-top: 1px solid rgba(255,255,255,rgba(255,255,255,.3));">
		<h3>Customer Update Form</h3>
		<label> Customer Id :</label>
		<form:input path="empId"/>
		<label>Customer Name:</label>
		<form:input path="empName"/>
		<label> Customer Age : </label>
		<form:input path="empAge"/>
		<label> Customer Email : </label>
		<form:input path="empEmail" type="email"/>
		<label>Customer Join Date :</label>
		<form:input path="empJoinDate" type="date"/>
		<label>Customer Gender :</label>
		<form:select path="empGender">
			<form:option value="null" label="Select" />
			<form:option value="Male" label="Male" />
			<form:option value="Female" label="Female" />
		</form:select>
		<label> Customer Phone Number : </label>
		<form:input path="empPhoneNumber"/>
		<label> Customer Grade : </label>
		<form:input path="empGrade"/>
		<label> Customer Location : </label>
		<form:select path="empLocation">
			<form:option value="Chennai" label="Chennai" />
			<form:option value="Mumbai" label="Mumbai" />
			<form:option value="Banglore" label="Banglore" />
		</form:select>
		
		<label> Customer Password : </label>
		<form:input path="empPassword"/>
		<button type="submit">Submit</button>
	</form:form>
</body>
</html>

