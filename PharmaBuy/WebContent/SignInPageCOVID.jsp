<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        #position: sticky;
  
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
        padding: 10px;
        }
    .btable {
        padding: 10px;
        text-align: center;
        background: #f1f1f1;
        font-size: 30px;
        }
   .hi{
        position:fixed;
        top:55%;
        
        left:50%;
        -webkit-transform: translate(-50%,-30%);
        -moz-transform: translate(-50%,-50%);
        -o-transform:translate(50%,-50%);
        width:1000px;
        height:500px;
        padding:80px 40px;
        background-color: white;
        border-radius: 25px;
		background:transparant;      
        }
        .hi h2{
            margin:-10;
            padding :0 0 30px;
            #color: #fff;
            color:black;
            text-align:center;
            #text-transform:uppercase;
            } 
        .hi p{
                margin:0;
                padding:0;
                font-weight:bold;
                #color: #fff;
             color:black;
            }
         .hi input{
                width:100%;
                margin-bottom:20px;
            }
        .hi input[type="text"],
        .hi input[type="password"]{
            border:none;
            border-bottom: 4px solid #f1f1f1;
            #border-bottom: 4px solid #99ccff;
            background: transparent;
            outline:none;
            height:35px;
            #color: #fff;
             color:black;
            font-size:15px;
            }
        .hi input[type="submit"]{
            height: 30px;
            #color: #fff;
            color:black;
            font-size:15px;
            #background: red;
            background: #99ccff;
            cursor: pointer;
            border-radius: 25px;
            border: none;
            outline: none;
           margin-top: 12%;
               }
        
   /* .card {
        background-color: white;
        padding: 100px;
        margin-top: 20px;
        }
    .card p{
        text-decoration-style: solid;
        font-size: 20px;
        }*/
    .footer{
        background-color: #f1f1f1;
        padding: 50px;
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
        <a href="COVIDprjctFRONT.jsp#home">Home</a>
        <a href="COVIDprjctFRONT.jsp#about">About</a>
        <a href="COVIDprjctFRONT.jsp#contact">Contact us</a>
        <a href="SignUpPageCOVID(Change).jsp" style="float:right">Sign Up</a>
        <a href="ForgetPassCOVID.jsp" style="float:right">Forgot Password</a>
        
    </div>
    </div>
   <!-- <div class="row"> -->
<!--    <div class="btable">Please select from the listed items</div> -->
   <div class="row">
<div class="hi">

<h2>Sign in</h2>
<form action="validate" method="post">
<p>Enter name:</p>
<input type="text" name="name" placeholder="Enter username">

<p>Enter Password:</p>
<input type="password" name="password" placeholder="Enter password">

<input type="submit"  value="Sign in">

</form>
</div>
</div>

<!--    </div>  -->
<div class="footer">
        <p>Copyright © 2020 PharmaBuy, Inc.</p>
    </div>
<script>
/*    window.onscroll = function() {myFunction()};
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
    