<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="web.ItemDAO" %>
<%@ page import="java.sql.*" %>
<! doctype html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
        
/*Search bar*/
.topnav .search-container {
  float: right;
}
        
.topnav input[type=text] {
  padding: 8.5px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
  background: transparent;
  border-bottom: 4px solid #f1f1f1;
}

.topnav .search-container button {
  float: right;
  padding: 12px 20px;
  margin-top: 8px;
  margin-right: 16px;
  #background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}

.topnav .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
  }  
  
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
        text-align: center;
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
    
    <%
    try{
    	ItemDAO it= new ItemDAO();
        Connection con = it.getConnection();
        Statement st=con.createStatement();
        ResultSet rs = st.executeQuery("select * from users where act='"+1+"'");
        while (rs.next()) {
%>
    
    	<a href="ListofITems2.jsp">Hi <%=rs.getString(2) %></a>
<%               
            }
        } catch (Exception e) {
            System.out.println(e);
        }
%>    	
        <a href="COVIDprjctFRONT.jsp#home">Home</a>
        <a href="COVIDprjctFRONT.jsp#about">About</a>
        <a href="COVIDprjctFRONT.jsp#contact">Contact us</a> 
        <a href="Actichange.jsp" style="float:right">Log Out</a>
        <a href="Gotocart.jsp" style="float:right">Go to cart</a>
        
        <div class="search-container">
    		<form action="search.jsp">
      			<input type="text" placeholder="Search Item.." name="search">
      			<button type="submit"><i class="fa fa-search"></i></button>
    		</form>
        
    	</div>
    </div>
    </div>
   <!-- <div class="row"> -->
    <div class="btable">Please select from the listed items</div>
    <%
    	String msg=request.getParameter("msg");
		if("added".equals(msg))
		{
    %>
    <h3>Product added succesfully</h3>>
    <% }%>
    <% if("exist".equals(msg))
    	{%>
    <h3>Product already exists in ypur cart! Quantity increased</h3>
    <% }%>
    <table>
  		<tr>
    		<th>ID</th>
    		<th>NAME</th>
    		<th>CATEGORY</th>
    		<th>PRICE</th>
    		<th>ADD TO CART</th>
 		 </tr>
  

<%
    try{
    	ItemDAO it= new ItemDAO();
        Connection con = it.getConnection();
        Statement st=con.createStatement();
        String item = request.getParameter("search");
        ResultSet rs = st.executeQuery("select * from items where name like '%"+item+"%' or category like '%"+item+"%'");
        while (rs.next()) {
%>
     <tr>
        <td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %><img src="./Dimage?id=<%= rs.getString(1) %>" style="width:200px;height:200px;float: right; border-radius: 30px;"></td>       
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><a href="Addcart.jsp?id= <%=rs.getString(1)%>">Add to cart</a></td>
    </tr>
<%               
            }
        } catch (Exception e) {
            System.out.println(e);
        }
%>
</table>
<!--    </div>  -->
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