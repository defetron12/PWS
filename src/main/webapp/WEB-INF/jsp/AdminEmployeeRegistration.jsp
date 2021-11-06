<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Registration</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel = "icon" href = "resources/img/image.png" type = "image/x-icon">
    
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
   

    @media (min-width: 1025px) {
  .h-custom {
    
  }
}
*{
  font-family: 'Poppins', sans-serif;
}
.card-registration .select-input.form-control[readonly]:not([disabled]) {
  font-size: 1rem;
  line-height: 2.15;
  padding-left: .75em;
  padding-right: .75em;
}
.card-registration .select-arrow {
  top: 13px;
}


.gradient-custom-2 {
  /* fallback for old browsers */
  background: #a1c4fd;

  /* Chrome 10-25, Safari 5.1-6 */
  background: -webkit-linear-gradient(to right, rgba(161, 196, 253, 1), rgba(194, 233, 251, 1));

  /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  background: white
}

.bg-indigo {
  background:white
}
@media (min-width: 700px) {
  .card-registration-2 .bg-indigo {
    border-top-right-radius: 15px;
    border-bottom-right-radius: 15px;
  }
}
@media (max-width: 1025px) {
  .card-registration-2 .bg-indigo {
    border-bottom-left-radius: 15px;
    border-bottom-right-radius: 15px;
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
    width: 80%;
    min-height: 80vh;
}
  </style>
</head>
<body>
	<form action="submitform" modelAttribute="employeeDetailsAdmin" 
			enctype="multipart/form-data" >
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
     
      <a class="navbar-brand" href="#">Bank Application</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
     
          <li class="nav-item">
            <a class="nav-link" href="home">Return</a>
          </li>
        
        </ul>
        
      </div>
    </div>
  </nav>
  <h1 align="center" style=" margin-top: -1%;">${msg}</h1>
  <section class="h-100 h-custom gradient-custom-2">
    <div class="container py-5 h-10">
      <div class="row d-flex justify-content-center align-items-center h-2" >
        <div class="col-17">
          <div class="card card-registration card-registration-2" style="border-radius: 15px;">
            <div class="card-body p-0">
              <div class="row g-0">
                <div class="col-lg-6">
                  <div class="p-5">
                  <h3 class="fw-normal mb-5" style="color: black;">Customer Personal Details</h3>
  
                   <div class="row">
                    <div class="mb-4 pb-2">
                        <div class="form-outline">
                          <input type="text" required id="form3Examplev4" name="empId" class="form-control form-control-lg" />
                          <label class="form-label" for="form3Examplev4">Customer ID</label>
                        </div>
                      </div>
                    
                      <div class="mb-4 pb-2">
                        <div class="form-outline">
                          <input type="text" required id="form3Examplev4" name="empName" class="form-control form-control-lg" />
                          <label class="form-label" for="form3Examplev4">Customer Name</label>
                        </div>
                      </div>
                      <div class="mb-4 pb-2">
                        <div class="form-outline">
                          <input type="text" required id="form3Examplev4" name="empAge" class="form-control form-control-lg" />
                          <label class="form-label" for="form3Examplev4">Customer Age</label>
                        </div>
                      </div>
                  
                    </div>
                    <div class="mb-4 pb-2"  >
                      <select class="form-control form-control-lg" name="empGender" required>
                        <option selected class="form-select" ></option>
                         <option value="Male" value="Male">Male</option>
                        <option value="Female" value="Female">Female</option></select>
                      <label class="form-label" for="form3Examplev4">Customer Gender</label>
                       
                    </div>                 
                    <div class="row">
                      <div class="mb-4 pb-2">
                        <div class="form-outline">
                          <input type="text" required id="form3Examplev4" name="empPhoneNumber" class="form-control form-control-lg" />
                          <label class="form-label" for="form3Examplev4">Customer Phone Number </label>
                        </div>
                      </div>
                      <div class="mb-4 pb-2">
                        <div class="form-outline">
                          <input type="text" required id="form3Examplev4" name="empPassword" class="form-control form-control-lg" />
                          <label class="form-label" for="form3Examplev4">Customer Password </label>
                        </div>
                      </div>
                    </div>
  
                  </div>
                </div>
                <div class="col-lg-6 bg-indigo text-black">
                  <div class="p-5">
                    <h3 class="fw-normal mb-5">Contact Details</h3>
  
                    <div class="mb-4 pb-2">
                      <div class="form-outline form-white">
                        <input type="text" required id="form3Examplea2" name="empEmail" class="form-control form-control-lg" />
                        <label class="form-label" for="form3Examplea2">Customer Email</label>
                      </div>
                    </div>
  
                  
  
                   
                      <div class="mb-4 pb-2">
  
                        <div class="form-outline form-white">
                          <input type="date" required id="form3Examplea4" name="empJoinDate"  class="form-control form-control-lg" />
                          <label class="form-label" for="form3Examplea4">Date Of Birth</label>
                        </div>
                    
                      </div>
                  
                    </div>
                      <div class="mb-4 pb-2"  >
                        <select class="form-control form-control-lg" name="empLocation">
                          <option selected class="form-select" required></option>
                          <option value="Chennai" name="Chennai">Chennai</option>
                          <option value="Mumbai" name="Mumbai">Mumbai</option>   
                          <option value="Banglore" name="Banglore">Banglore</option>   
                        </select>
                        <label class="form-label" for="form3Examplev4">Customer Location</label>
                         
                      </div>       
  
                    
                    <center>
  <input type="submit" class="btn btn-light btn-lg" class="data-mdb-ripple-color=dark" value="Register" >
                    </center>
  
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    
  </section>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" ></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" ></script>
</form>
</body>
</html>