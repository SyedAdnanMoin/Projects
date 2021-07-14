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
        <a href="COVIDprjctFRONT.jsp#home">Home</a>
        <a href="COVIDprjctFRONT.jsp#about">About</a>
        <a href="COVIDprjctFRONT.jsp#contact">Contact us</a>
        <a href="SignInPageCOVID.jsp" style="float:right">Sign in</a>
        <a href="SignUpPageCOVID(Change).jsp" style="float:right">Sign Up</a>
    </div>
    </div>
    <div class="row">
        <div class="card" id="home">
            <h2>PHARMA PRODUCTS</h2>
            <p>The online medicine ordering system is to automate the existing manual system with the help of advanced computerized software. Also the reordering process is very simple using this online portal.</p>
            <p>The valuable data can be stored for a longer period with easy access and reordering of the same.</p>
            <p>Internet pharmacies offer a convenient way to obtain prescription drugs and are frequently used by health insurers. 
            </p>
            
            <p>Our PharmaBuy is ranked highest for customer satisfaction,timely delivery and guarenteed lowest prices in J.D. Power's 2020 U.S. Pharmacy Study</p>
        </div>
     <div class="card" id="about">
      <h2>ABOUT US</h2>
      <p>Welcome to PharmaBuy, your number one source for pharmaceutical equipments. We're dedicated to giving you the very best of products, with a focus on three characteristics, ie: dependability, customer service and uniqueness.
          Founded in 2011 by Dr.minshing louis, PharmaBuy has come a long way from its beginnings .When we first started out , our main intension was to help elderly patients who are unable to physically be present in a pharmacy , we have the best equipment for tracking and shipping the required items sepcified in our store , ie: we do intense research, and gave the impetus to turn hard work and inspiration into to a booming pharmaceutical store. We now serve customers all over the world with international shipping, and are thrilled to be a part of the online shopping industry and we wish to provide you with a better shopping experience</p>
      
    </div>
    
    <div class="card" id="contact">
      <h2>CONTACT INFO</h2>
      <p>Land-line: 24433246</p>
      <p>Phone: 97712428</p>
      <div class="fakeimg" style="height:200px;">Please feel free to contact us anytime we have a 24hour call service. In an effort to cater your needs</div>
      <p>PharmaBuy</p>
      <p>The family of independent pharmacies ranked highest for customer satisfaction in J.D. Power's 2020 U.S. Pharmacy Study</p>
    </div>
    </div>
    <div class="footer">
        <p>Copyright © 2021 PharmaBuy, Inc.</p>
    </div>
<script>
    window.onscroll = function() {myFunction()};
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
    }
</script>
</body>
</html>
    