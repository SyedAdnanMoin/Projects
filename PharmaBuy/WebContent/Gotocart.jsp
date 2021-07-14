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
        text-align: center;
        padding: 8px;
        #border-radius:10px;
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
        
   span {
  content: "\002B";
  text-align:center;
  background-color:#66c2ff;
  padding-right:20px;
  border-radius:9px;
}     
round{
	border-radius:9px;
	background-color:green;
}
  .btn{
  	text-align: center;
  	background-color:#f1f1f1;
  	#background-color: black;
  	#color:white;
  	border-radius:10px;
  	border: 1px solid #dddddd;
  	font-weight: bold;
  	font-size:15px;
  	
  } 
   .btn :hover {
        background-color:#99ccff;
        color:black;
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
        <a href="addcheck.jsp" style="float:right">Proceed to pay</a>
        
    </div>
    </div>
   <!-- <div class="row"> -->
    <div class="btable">Items in your cart</div>
    <%
    	String msg=request.getParameter("msg");
		if("full".equals(msg))
		{
    %>
    <h3>The Selected Item is out of stock.</h3>>
    <% }%>
    <% if("exist".equals(msg))
    	{%>
    <h3>Product already exists in ypur cart! Quantity increased</h3>
    <% }%>
    <table>
    
<%
    try{
    	String unm="";
    	int total=0;
    	int tot=0;
    	ItemDAO it= new ItemDAO();
        Connection con = it.getConnection();
        Statement st=con.createStatement();
        ResultSet us = st.executeQuery("select * from users where act='"+1+"'");
        while(us.next()){
        	unm=us.getString(2);
        }
        ResultSet item = st.executeQuery("select sum(quantity) from cart where uname='"+unm+"'");
    	while (item.next()) {
			tot=item.getInt(1);
    	}
        ResultSet rs = st.executeQuery("select sum(total) from cart where uname='"+unm+"'");
        while (rs.next()) {
        	total=rs.getInt(1);
        }
   
%>      
    <tr id=round>
		<th>CART ITEMS:<%out.println(tot); %></th><th>TOTAL: OMR <%out.println(total); %></th>
	</tr>
<% 
 }catch(Exception e){
    	System.out.println(e);
    }
%>
	
  		<tr>
    		<th>ID</th>
    		<th>NAME</th>
    		<th>QUANTITY</th>
    		<th>PRICE</th>
    		<th>TOTAL PRICE</th>
 		 </tr>
  

<%
    try{
    	String unm="";
    	ItemDAO it= new ItemDAO();
        Connection con = it.getConnection();
        Statement st=con.createStatement();
        ResultSet us = st.executeQuery("select * from users where act='"+1+"'");
        while(us.next()){
        	unm=us.getString(2);
        }
        ResultSet rs = st.executeQuery("select * from cart where uname='"+unm+"'");
        while (rs.next()) {
%>
     <tr>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %><img src="./Dimage?id=<%= rs.getString(2) %>" style="width:200px;height:200px;float: right; border-radius: 30px;"></td> 
        <td><a href="incdec.jsp?id=<%=rs.getString(2)%>&quan=inc"><button class="btn">+</button></a><%=rs.getString(4) %><a href="incdec.jsp?id=<%=rs.getString(2)%>&quan=dec"><button class="btn">-</button></a></td>
        <td><%=rs.getString(5) %></td>
        <td><%=rs.getString(6)%></td>       
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
    