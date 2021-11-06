<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forgot Password</title>
<style type="text/css">
@import
	url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

h2{
    font-size: 40px;
    text-align: center;
    color: black;
    letter-spacing: 3px;
    margin-top: 5%;
    opacity: 1;
     margin-right: 2%;
      margin-bottom: 4%;
}
body {
	height: 100vh;
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	
}

form {
	height: 46%;
	width: 30%;
	display: flex;
	flex-direction: column;
	background: white;
}

h3 {
	font-size: 40px;
	text-align: center;
	color: black;
	letter-spacing: 3px;
	margin-top: 5%;
	opacity: .6;
}

label {
	font-size: 20px;
	color: black;
	margin-left: 10%;
	opacity: .6;
	display: flex;
	flex-direction: column;
	margin-top: 5%;
}

input {
	width: 80%;
	margin: 5% auto;
	background: transparent;
	border-style: none;
	outline: none;
	border-bottom: 1px solid black;
	opacity: 1;
	font-weight: 50 px;
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
	box-shadow: 3px 3px 5px rgba(31, 38, 135, 0.37);
	border-top: rgba(255, 255, 255, 0.06);
	border-left: rgba(255, 255, 255, 0.06);
}

a {
	font-size: 13px;
	text-align: center;
	color: black;
	opacity: .6;
}
</style>
</head>
<body>
<h2 align="center" style="color: white">${msg2}</h2>
	<form:form action="send-Otp" method="post"
		style="box-shadow:0 8px 32px 0 rgba(31 ,38,135,.37); border-radius: 30px;border-left: 1px solid rgba(255,255,255,.3) ;border-top: 1px solid rgba(255,255,255,rgba(255,255,255,.3));">
		<h3>Forgot Password</h3>
		<label>Email</label>
		<input type="email" name="empEmail" required="required"
			placeholder="Enter The Mail Id Here" />
		<button type="submit">Verify</button>
		<a href="/">Return home</a>
	</form:form>
</body>
</html>