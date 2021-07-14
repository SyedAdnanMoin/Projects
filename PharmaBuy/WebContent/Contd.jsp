<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="web.ItemDAO" %>
<%@ page import="java.sql.*" %>    
<! doctype html>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">    
    <style>
        * {
  box-sizing: border-box;
}
    body {
        font-family: Arial;
        padding: 10px;
        background: #f1f1f1;
        background-repeat: no-repeat;
        }

    .header {
        padding: 10px;
        text-align: center;
        background: #99ccff;
        border-radius: 10px;
        margin-top: 0px;
        position: sticky;
  
        }
    .header h1 {
        font-size: 60px;
        }
    h2{
        font-size:40px;
        }    
    .topnav {
        overflow: hidden;
        background-color: #333;
        }

/* Style the topnav links */
    .topnav a {
        float: left;
        display: block;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        margin-top: 0px;
        }

/* Change color on hover */
    .topnav a:hover {
        background-color:#ddd;
        color:black;
        }
/*For the content page*/
    .row:after {
        content: "";
        display: table;
        clear: both;
        position: fixed;
        }
    .card {
        background-color: white;
        padding: 100px;
        margin-top: 20px;
        }
    .card p{
        text-decoration-style: solid;
        font-size: 20px;
        }
    .footer {
        background-color: #f1f1f1;
        padding: 80px;
        text-align: center;
        }
    .sticky {
        position: fixed;
        top: 0;
        width: 97.5%;
        }

.sticky + .row {
  padding-top: 220px;
}
    </style>
</head>
<body style="background-image: url('D943_220_858_1200.jpg')"> 
    <div id="myhead">
    <div class="header">
        <h1>PharmaBuy</h1>
        <p>Buy the required COVID protection equipment</p>
    </div>
    <div class="topnav">
        <a href="#home">Home</a>
        <a href="#about">About</a>
        <a href="#contact">Contact us</a>
        <a href="SignInPageCOVID.jsp" style="float:right">Sign in</a>
    </div>
    </div>
    <div class="row">
        <div class="card" id="home">
            <h2>Thank You For Shopping With Us</h2>
            <p>We hope to provide you with better experience next time</p>
  
            <a href="ListofITems2.jsp">Continue Shopping</a>
            
            <p>The family of independent pharmacies ranked highest for customer satisfaction in J.D. Power's 2020 U.S. Pharmacy Study</p>
        </div>
    </div>
    <div class="footer">
        <p>Copyright © 2021 PharmaBuy, Inc.</p>
    </div>
<script>
   /* window.onscroll = function() {myFunction()};
    var navbar = document.getElementById("myhead");
    var sticky = navbar.offsetTop;
    function myFunction()
    {
        if (window.pageYOffset >= sticky)
        {
            navbar.classList.add("sticky")
        } 
        else 
        {
        navbar.classList.remove("sticky");
        }
    }*/
</script>
</body>
</html>