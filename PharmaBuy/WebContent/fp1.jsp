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
        
 .slideshow-container {
  max-width: 10000px;
  position: relative;
  z-index: -1;
  margin: auto;
  height: 500px;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 4px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
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
    </div>
    </div>
    
    
    <div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="./Frontimage?id=1" style="width:100%">
  <div class="text">Caption Text</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="./Frontimage?id=2" style="width:100%">
  <div class="text">Caption Two</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="./Frontimage?id=3" style="width:100%">
  <div class="text">Caption Three</div>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>
    

    <div class="row">
        <div class="card" id="home">
            <h2>COVID Equipment</h2>
            <p>An online pharmacy, internet pharmacy, or mail-order pharmacy is a pharmacy that operates over the Internet and sends orders to customers through mail, shipping companies, or online pharmacy web portal. Online pharmacies include: Legitimate Internet pharmacies in the same country as the person ordering</p>
            <p>Internet pharmacies offer a convenient way to obtain prescription drugs and are frequently used by health insurers. Unfortunately, only about 4% of online pharmacies are actually legal, licensed pharmacies. Fraudulent pharmaices may allow you to purchase prescription medicines without a prescription.
            </p>
            
            <p>The family of independent pharmacies ranked highest for customer satisfaction in J.D. Power's 2020 U.S. Pharmacy Study</p>
        </div>
     <div class="card" id="about">
      <h2>ABOUT US</h2>
      <p>Welcome to PharmaBuy, your number one source for pharmaceutical equipments.We're dedicated to giving you the very best of products, with a focus on three characteristics, ie: dependability, customer service and uniqueness.
          Founded in 2011 by Dr.minshing louis, PharmaBuy has come a long way from its beginnings .When [store founder] first started out, his/her passion for [passion of founder, ie: helping other parents be more eco-friendly, providing the best equipment for his fellow musicians] drove him to [action, ie: do intense research, quit her day job], and gave him the impetus to turn hard work and inspiration into to a booming online store. We now serve customers all over [place, ie: the US, the world, the Austin area], and are thrilled to be a part of the [adjective, ie: quirky, eco-friendly, fair trade] wing of the [industry type, ie: fashion, baked goods, watches] industry.</p>
      
    </div>
    
    <div class="card" id="contact">
      <h2>CONTACT INFO</h2>
      <h5>Title description, Sep 2, 2017</h5>
      <div class="fakeimg" style="height:200px;">Image</div>
      <p>Some text..</p>
      <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
    </div>
    </div>
    <div class="footer">
        <p>Copyright © 2020 HubSpot, Inc.</p>
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
    
    var slideIndex = 1;
    showSlides(slideIndex);

    function plusSlides(n) {
      showSlides(slideIndex += n);
    }

    function currentSlide(n) {
      showSlides(slideIndex = n);
    }

    function showSlides(n) {
      var i;
      var slides = document.getElementsByClassName("mySlides");
      var dots = document.getElementsByClassName("dot");
      if (n > slides.length) {slideIndex = 1}    
      if (n < 1) {slideIndex = slides.length}
      for (i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";  
      }
      for (i = 0; i < dots.length; i++) {
          dots[i].className = dots[i].className.replace(" active", "");
      }
      slides[slideIndex-1].style.display = "block";  
      dots[slideIndex-1].className += " active";
    }
 
</script>
</body>
</html>
    