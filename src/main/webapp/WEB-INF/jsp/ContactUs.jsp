<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Intellect Design Arena</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel = "icon" href = "resources/img/image.png" type = "image/x-icon">
    <style type="text/css">
    
@import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
*{
    margin: 0;
    padding: 0;
    font-family: 'Poppins', sans-serif;
    box-sizing: border-box; 
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

/*Home*/
#Home{
width: 100;
min-height: 100vh;
background-size: cover;
background-position: center;
background-repeat: no-repeat;
display:flex;
align-items: center;
color: white;
flex-direction: column;
}


}
#const{
    animation: none;
    background: -webkit-linear-gradient(45deg,#845ec2,#d65db1,#ff6f91,#ff9671,#ffc75f,#f9f871);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    
}
.logo-image{
    width: 46px;
    height: 46px;
    border-radius: 50%;
    overflow: hidden;
    margin-top: -6px;
}

@keyframes text{
    50%{
        opacity: 1;
    }
    100%{
        opacity: 0;
    }
}
@media screen and (max-width:576px){
    #Home p{
        font-size: 80px;
    }
    
}
#Home span{
    font-weight: bold;
    background: -webkit-linear-gradient(45deg,#845ec2,#d65db1,#ff6f91,#ff9671,#ffc75f,#f9f871);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    size: 20px;
    font-weight: 600;
}

 *{
    margin: 0;
    padding: 0;
    font-family: 'Poppins', sans-serif;
    box-sizing: border-box; 
}

#Home{
width: 100;
min-height: 100vh;
background: white;
background-size: cover;
background-position: center;
background-repeat: no-repeat;
display:flex;
align-items: center;
color: white;
flex-direction: column;
}
.content-container {
  padding-top: 20px;
}



.content-container {
  padding-left: 220px;
} 

/********** breadcrumb start **********/
.breadcrumb-container {
  background: #000000;
  height:0px;
  line-height:10px;
  vertical-align: middle; 
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center center;
}


.breadcrumb-wrap h1 {
 
  font-size: 3em;
  font-weight: bold;
    background: -webkit-linear-gradient(45deg,#845ec2,#d65db1,#ff6f91,#ff9671,#ffc75f,#f9f871);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    size: 100px;
    font-weight: 100;
  
}

.breadcrumb-wrap h1{
    font-weight: bold;
    background: -webkit-linear-gradient(45deg,#845ec2,#d65db1,#ff6f91,#ff9671,#ffc75f,#f9f871);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    size: 20px;
    font-weight: 600;
}

.breadcrumb-wrap {
  padding: 90px 0;
}

.breadcrumbs li {
  padding-right: 30px;
  position: relative;
}

.breadcrumbs li:last-child {
  padding-right: 0;
}

.breadcrumbs li::after {
  position: absolute;
  content: '/';
  top: 0;
  right: 15px;
  color: #fff;
}

.breadcrumbs li:last-child::after {
  content: unset;
}

.breadcrumbs li a,
.breadcrumbs li span {
  color: #fff;
}

.breadcrumbs li a {
  position: relative;
}

.breadcrumbs li a::after {
  position: absolute;
  content: '';
  height: 2px;
  width: 0;
  background: #fff;
  bottom: -2px;
  left: 0;
  transition: .4s;
  -webkit-transition: .4s;
  -moz-transition: .4s;
  -ms-transition: .4s;
  -o-transition: .4s;
}

.breadcrumbs li a:hover::after {
  width: 100%;
}

section{

  background: -webkit-linear-gradient(45deg,#845ec2,#d65db1,#ff6f91,#ff9671,#ffc75f,#f9f871);
    width: 100%;
    min-height: 30vh;
}



.thenme-gradient-blue-button rounded px-5 py-3{
color: #fff;

}
.thenme-gradient-blue-button {
  color: #fff;
  text-align: center;
  border: 0;
  position: relative;
  overflow: hidden;
  z-index: 0;
cursor: pointer;
}

.thenme-outline-blue-button {
  color: #007bff;
  border: 2px solid #007bff;
  transition: .4s;
  -webkit-transition: .4s;
  -moz-transition: .4s;
  -ms-transition: .4s;
  -o-transition: .4s;
}





.thenme-outline-blue-button:hover {
  background: #007bff;
  color: #fff;
}

.thenme-gradient-blue-button::before {
  background: -o-linear-gradient(left, #00a1f5, #0064f3, #00a1f5);
  background: -webkit-gradient(linear, left top, right top, from(#00a1f5), color-stop(#0064f3), to(#00a1f5));
  background: #ff42d2;
  width: 200%;
  content: '';
  top: 0;
  left: 0;
  height: 100%;
  position: absolute;
  z-index: -1;
  transition: .4s;
  -webkit-transition: .4s;
  -moz-transition: .4s;
  -ms-transition: .4s;
  -o-transition: .4s;
}

.input-wrap input{
outline:none !important;
border:none !important;
border-radius:10px !important;
}

/********** breadcrumb end **********/

  
    
    </style>
</head>
<body>
    
    <!--Navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
         
          <a class="navbar-brand" href="#">Intellect Design Arena</a>
          </button>
          
        </div>
      </nav>
     
     <section class="breadcrumb-container feature-detail-breadcrumb" style="background-image: url('assets/images/contact/bnr1-1.png');" title="Contact Us">
        <div class="container">
          <div class="row">
            <div class="breadcrumb-wrap text-center col-12">
              <h1>Contact Us</h1>
              <ul class="breadcrumbs d-flex flex-wrap align-items-center justify-content-center">
                <li><a href="/" title="Home">Home</a></li>

              </ul>
            </div>
          </div>
        </div>
      </section>
     
     
     
 <section class="contact-us">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            
            <div class="col-lg-8">
              <div class="headings mb-5 text-center">
                <span class="text-uppercase">Contact Us</span>
                <h3 class="text-capitalize">Drop your query here!</h3>
                <p>We would love to attend them! And solve your issue </p>
              </div>
              <form:form      action="submitcontact" modelAttribute="contactus"    method="post" id="contact-form" class="row justify-content-center">
                <div class="input-wrap col-lg-6 mb-4">
                  <input type="text" placeholder="Name" name="name"  path="name" class="w-100 rounded w-100 px-3 py-3" required="" pattern="^[A-Za-z ]{1,30}$"><!-- <input type="text" id="website" name="website"/> -->
                </div>
                <div class="input-wrap col-lg-6 mb-4">
                  <input type="text" placeholder="Phone" name="phoneNo" path="phoneNo" class="w-100 rounded w-100 px-3 py-3" maxlength="10" required="" pattern="[0-9]{10}">
                </div>
                <div class="input-wrap col-lg-6 mb-4">
                  <input type="text" placeholder="Email"  name="email"  path="email" class="w-100 rounded w-100 px-3 py-3" required="">
                </div>
                <div class="input-wrap col-lg-6 mb-4">
                  <input type="text" placeholder="Company Name"  name="companyName" path="companyName" class="w-100 rounded w-100 px-3 py-3" required="">
                </div>
                <div class="input-wrap col-12 mb-4">
                  <textarea name="message" placeholder="Message" id="" rows="3" path="message" class="w-100 rounded w-100 px-3 py-3" required=""></textarea>
                </div>
                <div class="input-wrap col-lg-6 mb-4">
                  <input type="date" placeholder="Today's Date" id="date" name="date" path="date" class="w-100 rounded w-100 px-3 py-3" required="">
                </div>
               
                 <div class="input-wrap col-lg-6">
                  <button id="contact-btn" type="submit" class="thenme-gradient-blue-button rounded px-5 py-3">SEND</button>
                </div>
              
              <div class="loader hide"></div>
              </form:form>
            </div>
          </div>
        </div>
      </section>    
     
   
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" ></script>   
    
</body>
</html>