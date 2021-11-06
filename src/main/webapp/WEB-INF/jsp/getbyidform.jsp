<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Detail</title>
    <link rel="stylesheet" href="style..css">
     <link rel = "icon" href = "resources/img/image.png" type = "image/x-icon">
   
    <style type="text/css">
    @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
*{
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

form{
    height: 65%;
    width: 30%;
    display: flex;
    flex-direction: column;
    background: white;
}
h3{
    font-size: 30px;
    text-align: center;
    color: black;
    letter-spacing: 3px;
    margin-top: 5%;
    opacity: .6;
}
label{
    font-size: 20px;
    color: black;
    margin-left: 10%;
    opacity: .6;
    display: flex;
    flex-direction: column;
    margin-top: 5%;
}
input{
    width: 80%;
    margin: 5% auto;
    background: transparent;
    border-style: none;
    outline: none;
    border-bottom: 1px solid black;
    opacity: .6;
    margin-bottom: 5%;
    color: black;
    
}
button{
   
    outline: none;
    width: 50%;
    margin: 3% auto;
    color: black;
    border-style: none;
    padding: 2%;
    border-radius: 30px;
    
    border-top: rgba(255,255,255,0.06);
    border-left: rgba(255,255,255,0.06);
}
a{
    font-size: 13px;
    text-align: center;
    color:black ;
    opacity: .6;
}
    </style>
    
    
</head>
<body>
     
   
		<h2 style="color: white">${msg1}</h2>
    
   <form action="getbyid",method="post" style="box-shadow:0 8px 32px 0 rgba(31 ,38,135,.37); border-radius: 30px;border-left: 1px solid rgba(255,255,255,.3) ;
    border-top: 1px solid rgba(255,255,255,rgba(255,255,255,.3));">
  
        <h3>Enter Customer ID</h3>
        
        <label>Customer ID</label>
        <input type="text" name ="empId" required="required" placeholder="Enter Customer ID here">
        <button type="submit" >Search</button>       
        </form>

</body>
</html>


	


