<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank Application</title>
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
section{
    width: 100%;
    min-height: 100vh;
}
/*Home*/
#Home{
width: 100;
min-height: 80vh;
background-size: cover;
background-position: center;
background-repeat: no-repeat;
display:flex;
align-items: center;
color: white;
flex-direction: column;
}
#Home p{
    position: absolute;
    top: 30%;
    font-size: 100px;
    opacity: 0;
    animation:text 2s ease   ;

}
#Home p:nth-child(1)
{
    animation-delay: 0s;

}
#Home p:nth-child(2)
{
    animation-delay: 2s;

}
#Home p:nth-child(3)
{
    animation-delay: 4s;

}

#Home p:nth-child(4)
{
        
    animation-delay: 5s;
    animation-iteration-count: infinite;
    

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

/* ibs start */
.global-section{

background-repeat: no-repeat;
background-position: center;
width: 100%;
height: 75rem;
background-size: cover;
}
.global-heading-div{
position: relative;
top: 12rem;
}
.global-heading-1 ,.global-heading-2{
color: #fff;
text-align: center;
font-weight: 300;
}
.global-heading-2{
font-size: 4rem;
}
.award-row{
position: relative;
top: 15rem;
margin: 0 12rem;
}
.award-list li{
display: inline-block;
width: 32rem;
margin-left: 9rem;
}
nf-field:nth-child(13) {
  display: none !important;
}
nf-field.hidebf.act {
    display: block !important;
}
.ninja-techform-wrap .it_007_popup-form .popup_form_wrap .popCloseBtn {
    right: -6rem;
    top: 0;
}	
	
@media(max-width: 991px){
.global-section {
height: 57rem;
background-size: cover;
}
.global-heading-1 {
font-size: 3rem;
}
.global-heading-2 {
font-size:2.5rem !important;    
}
.global-heading-div {
top: 15rem;
}
.award-row {
margin: 0;
top: 23rem;
}
.award-list li {
width: 17rem;
margin-left: 6rem;
}
nf-field {
    width: 48% !important;
    margin-right: 1rem !important;
}	
.ninja-techform-wrap .it_007_popup-form .popup_form_wrap .popCloseBtn {
    right: 1rem;
    top: 0.55rem;
    z-index: 1000;
    background-color: #ccc;
    width: 3rem;
    height: 3rem;
    padding: 0.55rem 1rem;
    border-radius: 100%;
}
}
@media(max-width: 767px){
.global-heading-div {
top: 5rem;
}
.global-heading-1 {
font-size: 2.6rem;
padding: 0 1.5rem;
}
.global-heading-2 {
font-size: 2rem;
padding: 1rem 3rem;
}
.global-section {
height: 94rem;
background-size: cover;
}
.award-row {
top: 10rem;
text-align: center;
}
.award-list li {
width: 20rem;
margin-bottom: 0.35rem;
margin-left: 0;
}
.global-heading-2 {
    font-size: 1.85rem !important;
}
nf-field:nth-child(3) {
    width: 100% !important;
}
nf-field {
    width: 100% !important;
    margin-right: 0rem !important;
}
.nf-form-title h3:before {
    font-size: 1.85rem !important;
}
}


/* ibs ends */

* {
  color: #000;
  font-family: 'Work Sans', sans-serif;
}

/* .wrapper {
  scroll-behavior: smooth;
} */

.h4,
h4 {
  font-size: 1.8rem;
}

.headings>span {
  color: #00a1f5;
  font-weight: 600;
  font-size: 2em;
  margin-bottom: .6em;
  display: block;
}

.headings h3 {
  font-weight: 100;
  font-size: 5em;
  color: #000;
}

.headings h3 span {
  font-weight: 400;
  color: #000;
}

.headings h2 {
  font-weight: 100;
  font-size: 2em;
  color: #000;
}

.headings h2 span {
  font-weight: 600;
  color: #000;
}

a {
  text-decoration: none;
  font-weight: 50;
  font-size: 1.3em;
  color: white;
}

a:hover {
  text-decoration: none;
}

ul,
ol {
  padding: 0;
  margin: 0;
  list-style-type: none;
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
  border: 2px solid #000000;
  transition: .4s;
  -webkit-transition: .4s;
  -moz-transition: .4s;
  -ms-transition: .4s;
  -o-transition: .4s;
}

.thenme-outline-blue-button:hover {
  background: #272b2f;
  color: #fff;
}

.thenme-gradient-blue-button::before {
  background: -o-linear-gradient(left, #00a1f5, #0064f3, #00a1f5);
  background: -webkit-gradient(linear, left top, right top, from(#00a1f5), color-stop(#0064f3), to(#00a1f5));
  background: linear-gradient(90deg, #259fdf, #0064f3, #00a1f5);
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

.thenme-gradient-blue-button:hover::before {
  transform: translateX(-50%);
  -webkit-transform: translateX(-50%);
  -moz-transform: translateX(-50%);
  -ms-transform: translateX(-50%);
  -o-transform: translateX(-50%);
}

input:focus,
textarea:focus {
  outline: 0;
}

.err {
  color: #fff;
  /* background: #fff; */
  font-size: .8em;
  /* padding: 0 10px; */
}

  .one-platform {
    
    padding-top: 50px;
  padding-right: 30px;
  padding-bottom: 30px;
  padding-left: 80px;
    
  }




footer .main-footer{  padding: 20px 0;  background: #252525;}
footer ul{  padding-left: 0;  list-style: none;}

/* Copy Right Footer */
.footer-copyright { background: #222; padding: 5px 0;}
.footer-copyright .logo {    display: inherit;}
.footer-copyright nav {    float: right;    margin-top: 5px;}
.footer-copyright nav ul {  list-style: none; margin: 0;  padding: 0;}
.footer-copyright nav ul li { border-left: 1px solid #505050; display: inline-block;  line-height: 12px;  margin: 0;  padding: 0 8px;}
.footer-copyright nav ul li a{  color: #969696;}
.footer-copyright nav ul li:first-child { border: medium none;  padding-left: 0;}
.footer-copyright p { color: #969696; margin: 2px 0 0;}

/* Footer Top */
.footer-top{  background: #252525;  padding-bottom: 30px; margin-bottom: 30px;  border-bottom: 3px solid #222;}

/* Footer transparent */
footer.transparent .footer-top, footer.transparent .main-footer{  background: transparent;}
footer.transparent .footer-copyright{ background: none repeat scroll 0 0 rgba(0, 0, 0, 0.3) ;}

/* Footer light */
footer.light .footer-top{ background: #f9f9f9;}
footer.light .main-footer{  background: #f9f9f9;}
footer.light .footer-copyright{ background: none repeat scroll 0 0 rgba(255, 255, 255, 0.3) ;}

/* Footer 4 */
.footer- .logo {    display: inline-block;}

/*==================== 
  Widgets 
====================== */
.widget{  padding: 20px;  margin-bottom: 40px;}
.widget.widget-last{  margin-bottom: 0px;}
.widget.no-box{ padding: 0; background-color: transparent;  margin-bottom: 40px;
  box-shadow: none; -webkit-box-shadow: none; -moz-box-shadow: none; -ms-box-shadow: none; -o-box-shadow: none;}
.widget.subscribe p{  margin-bottom: 18px;}
.widget li a{ color: #ff8d1e;}
.widget li a:hover{ color: #4b92dc;}
.widget-title {margin-bottom: 20px;}
.widget-title span {background: #839FAD none repeat scroll 0 0;display: block; height: 1px;margin-top: 25px;position: relative;width: 20%;}
.widget-title span::after {background: inherit;content: "";height: inherit;    position: absolute;top: -4px;width: 50%;}
.widget-title.text-center span,.widget-title.text-center span::after {margin-left: auto;margin-right:auto;left: 0;right: 0;}
.widget .badge{ float: right; background: #7f7f7f;}

.typo-light h1, 
.typo-light h2, 
.typo-light h3, 
.typo-light h4, 
.typo-light h5, 
.typo-light h6,
.typo-light p,
.typo-light div,
.typo-light span,
.typo-light small{  color: #fff;}

ul.social-footer2 { margin: 0;padding: 0; width: auto;}
ul.social-footer2 li {display: inline-block;padding: 0;}
ul.social-footer2 li a:hover {background-color:#ff8d1e;}
ul.social-footer2 li a {display: block; height:30px;width: 30px;text-align: center;}
.btn{background-color: #ff8d1e; color:#fff;}
.btn:hover, .btn:focus, .btn.active {background: #4b92dc;color: #fff;
-webkit-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
-moz-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
-ms-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
-o-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
-webkit-transition: all 250ms ease-in-out 0s;
-moz-transition: all 250ms ease-in-out 0s;
-ms-transition: all 250ms ease-in-out 0s;
-o-transition: all 250ms ease-in-out 0s;
transition: all 250ms ease-in-out 0s;

}

    </style>
</head>
<body>
    
    <!--Navbar-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
         
          <a class="navbar-brand" href="#">Bank Application</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
              <li class="nav-item active ">
                <a class="nav-link" href="adminLogin">Admin</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="employeeLogin">Customer</a>
              </li>
            
            </ul>
            
          </div>
        </div>
      </nav>
      <!--Home-->
      <section id="Home">
          <p class="text-center"><span>Welcome</span></p>
          <p class="text-center"><span>To</span></p>
          <p class="text-center"><span>Bank</span></p>
         
          <p id="const" class="text-center"><span>Bank<br>Management System</span></p>

      </section>
             <ul class="award-list">				 				 	  
			
				      
             </ul>
             </div>
         </div>    
</section>



</ul>
</div>
</div>

</div>
</div>
</div>
  
<div class="footer-copyright">
<div class="container">
<div class="row">
<div class="col-md-12 text-center">
<p>Bank Application </p>

</div>
</div>
</div>
</div>

</footer>
</body>
</html>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" ></script>    
</body>
</html>