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
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
        }

    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
        }
    tr:nth-child(even) {
        background-color: #dddddd;
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
    .footer {
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
        <a href="ThankYouPage.jsp" style="float:right">Log Out</a>
        <a href="#" style="float:right">Go to cart</a>
        
    </div>
    </div>
   <!-- <div class="row"> -->
    <div class="btable">Please select from the listed items</div>
    <table>
  <tr>
    <th>ID</th>
    <th>NAME</th>
    <th>CATEGORY</th>
    <th>PRICE</th>
    <th>ADD TO CART</th>
  </tr>
  <tr>
    <td>1</td>
    <td>PPE kits
      <img src="" style="width:200px;height:200px;float: right; border-radius: 30px;"></td>
    <td>Protection</td>
    <td>20 RO</td>
    <td>Add to cart</td>
  </tr>
  <tr>
    <td>2</td>
    <td>Face masks
    <img src="file:///Users/syedadnanmoin/eclipse-workspace/trial/COVIDprjct/WebContent/mask.png" style="width:200px;height:200px;float: right; border-radius: 30px;"></td>
    <td>Protection</td>
    <td>5 RO</td>
    <td>Add to cart</td>
  </tr>
  <tr>
    <td>3</td>
    <td>Face shields
    <img src="file:///Users/syedadnanmoin/eclipse-workspace/trial/COVIDprjct/WebContent/shield.png" style="width:200px;height:200px;float: right; border-radius: 30px;"></td>
    <td>Protection</td>
    <td>10 RO</td>
    <td>Add to cart</td>
  </tr>
  <tr>
    <td>4</td>
    <td>Hand Sanitizer
    <img src="file:///Users/syedadnanmoin/eclipse-workspace/trial/COVIDprjct/WebContent/santizer.png" style="width:200px;height:200px;float: right; border-radius: 30px;"></td>
    <td>Protection</td>
    <td>2 RO</td>
    <td>Add to cart</td>
  </tr>
  <tr>
    <td>5</td>
    <td>Isopropyl Alcohol
    <img src="file:///Users/syedadnanmoin/eclipse-workspace/trial/COVIDprjct/WebContent/iso.png" style="width:200px;height:200px;float: right; border-radius: 30px;"></td>
    <td>Protection</td>
    <td>15 RO</td>
    <td>Add to cart</td>
  </tr>
  <tr>
    <td>6</td>
    <td>Pfizer COVID vaccine
    <img src="file:///Users/syedadnanmoin/eclipse-workspace/trial/COVIDprjct/WebContent/phiyz.png" style="width:200px;height:200px;float: right; border-radius: 30px;"></td>
    <td>Medicine</td>
    <td>100 RO</td>
    <td>Add to cart</td>
  </tr>
  <tr>
    <td>7</td>
    <td>Covishield COVID vaccine
    <img src="file:///Users/syedadnanmoin/eclipse-workspace/trial/COVIDprjct/WebContent/cshi.png" style="width:200px;height:200px;float: right; border-radius: 30px;"></td>
    <td>Medicine</td>
    <td>120 RO</td>
    <td>Add to cart</td>
  </tr>
   <tr>
    <td>8</td>
    <td>Covaxin COVID vaccine
    <img src="file:///Users/syedadnanmoin/eclipse-workspace/trial/COVIDprjct/WebContent/covax.png" style="width:200px;height:200px;float: right; border-radius: 30px;"></td>
    <td>Medicine</td>
    <td>140 RO</td>
    <td>Add to cart</td>
  </tr>
   <tr>
    <td>9</td>
    <td>Vitamin C tablets
    <img src="file:///Users/syedadnanmoin/eclipse-workspace/trial/COVIDprjct/WebContent/vitC.png" style="width:200px;height:200px;float: right; border-radius: 30px;"></td>
    <td>Medicine</td>
    <td>20 RO</td>
    <td>Add to cart</td>
  </tr>
   <tr>
    <td>10</td>
    <td>MultiVitamin Tablets
    <img src="file:///Users/syedadnanmoin/eclipse-workspace/trial/COVIDprjct/WebContent/Mult.png" style="width:200px;height:200px;float: right; border-radius: 30px;"></td>
    <td>Medicine</td>
    <td>30 RO</td>
    <td>Add to cart</td>
  </tr>
</table>

<!--    </div>  -->
    <div class="footer">
        <p>Copyright © 2020 HubSpot, Inc.</p>
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
    