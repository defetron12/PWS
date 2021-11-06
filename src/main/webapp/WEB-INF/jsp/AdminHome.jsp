<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin </title>
    <link rel="stylesheet" href="style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="icon" href="resources/img/image.png" type="image/x-icon">

    <style type="text/css">

        @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

        * {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            box-sizing: border-box;
            text-decoration: none !important;

        }

        nav {
            width: 100%;
            position: sticky !important;
            top: 0;
            left: 0;
            box-shadow: 0px 0px 8px rgba(0, 0, 0, .5);
            z-index: 10;

        }

        .navbar-brand {
            font-weight: bold;
            background: -webkit-linear-gradient(45deg, #845ec2, #d65db1, #ff6f91, #ff9671, #ffc75f, #f9f871);
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

        /*Home*/
        #Home {
            width: 100;
            min-height: 100vh;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            display: flex;
            align-items: center;
            color: white;
            flex-direction: column;
        }


        }
        #const {
            animation: none;
            background: -webkit-linear-gradient(45deg, #845ec2, #d65db1, #ff6f91, #ff9671, #ffc75f, #f9f871);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;

        }

        .logo-image {
            width: 46px;
            height: 46px;
            border-radius: 50%;
            overflow: hidden;
            margin-top: -6px;
        }

        @keyframes text {
            50% {
                opacity: 1;
            }
            100% {
                opacity: 0;
            }
        }

        @media screen and (max-width: 576px) {
            #Home p {
                font-size: 80px;
            }

        }

        #Home span {
            font-weight: bold;
            background: -webkit-linear-gradient(45deg, #845ec2, #d65db1, #ff6f91, #ff9671, #ffc75f, #f9f871);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            size: 20px;
            font-weight: 600;
        }

        * {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            box-sizing: border-box;
        }

        .sidebar-container {
            position: fixed;
            width: 280px;
            height: 100%;
            left: 0;
            overflow-x: hidden;
            overflow-y: auto;
            background: #1a1a1a;
            color: #fff;

        }

        #Home {
            width: 100;
            min-height: 100vh;
            background: white;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            display: flex;
            align-items: center;
            color: white;
            flex-direction: column;
        }

        .content-container {
            padding-top: 20px;
        }

        .sidebar-logo {
            padding: 10px 15px 10px 30px;
            font-size: 20px;
            background: -webkit-linear-gradient(45deg, #845ec2, #d65db1, #ff6f91, #ff9671, #ffc75f, #f9f871);
        }

        .sidebar-navigation {
            padding: 0;
            margin: 0;
            list-style-type: none;
            position: relative;
        }

        .sidebar-navigation li {
            background-color: transparent;
            position: relative;
            display: inline-block;
            width: 100%;
            line-height: 20px;
        }

        .sidebar-navigation li a {
            padding: 20px 10px 20px 20px;
            display: block;
            color: #fff;
        }

        .sidebar-navigation li .fa {
            margin-right: 10px;
        }

        .sidebar-navigation li a:active,
        .sidebar-navigation li a:hover,
        .sidebar-navigation li a:focus {
            text-decoration: none;
            outline: none;
        }


        .sidebar-navigation .header {
            font-size: 12px;
            text-transform: uppercase;
            background-color: #151515;
            padding: 10px 15px 10px 30px;
        }

        .sidebar-navigation .header::before {
            background-color: transparent;
        }


        .content-container {
            padding-left: 220px;
        }


        .content-container {
            padding-left: 220px;
        }

        .container-intellect h1 {
            font-size: 130px;
            color: rgba(255, 255, 255, 0.1);
            background: linear-gradient(45deg, #845ec2, #d65db1, #ff6f91, #ff9671, #ffc75f, #f9f871);
            background-repeat: no-repeat;
            -webkit-background-clip: text;
            animation: animate 3s linear infinite;
            font-weight: 600;
            height: 150px;
            padding-left: 130px;
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        }

        @keyframes animate {
            0% {
                background-position: left 0px top 10px;
            }
            40% {
                background-position: left 140px top 10px;
            }
            80% {
                background-position: left 80px top 10px;
            }
        }

        .container-intellect {
            margin-top: 40%;
            text-align: center;
        }
    </style>
</head>
<body>

<!--Navbar-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">

        <a class="navbar-brand" href="#">Banking Application</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item active ">
                    <a class="nav-link" href="/">Logout</a>
                </li>

        </div>
</nav>
<!--Home-->
<div class="sidebar-container">
    <div class="sidebar-logo">
        Bank Admin
    </div>
    <ul class="sidebar-navigation">
        <li class="header">Home Page</li>
        <li>
            <a href="adddetail">
                <i class="fa fa-home" aria-hidden="true"></i> Add Customer
            </a>
        </li>
        <li>
            <a href="getbyemployeeid">
                <i class="fa fa-tachometer" aria-hidden="true"></i>Get By Customer id
            </a>
        </li>
        <li>
            <a href="viewdetails">
                <i class="fa fa-tachometer" aria-hidden="true"></i>View All Customer
            </a>
        </li>

        <li>
            <a href="updatedetails">
                <i class="fa fa-users" aria-hidden="true"></i> Update Customer Details
            </a>
        </li>
        <li>
            <a href="getbyemployeeidpayslip">
                <i class="fa fa-cog" aria-hidden="true"></i> Identify individual customer
            </a>
        </li>
        <li>
            <a href="viewquery">
                <i class="fa fa-cog" aria-hidden="true"></i> Received Query
            </a>
        </li>
        <li>
            <a href="EmployeeBankDetailsViewAdmin">
                <i class="fa fa-cog" aria-hidden="true"></i> Customer Bank Details
            </a>
        </li>


    </ul>
</div>

<section id="Home">
    <div class="content-container">

        <div class="container-fluid">

            <!-- Main component for a primary marketing message or call to action -->
            <div class="jumbotron">

                <div class="container-intellect">
                    <h1>Welcome </h1>
                    <br>
                    <hr>
                </div>

            </div>

        </div>
    </div>
</section>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js"></script>

</body>
</html>
