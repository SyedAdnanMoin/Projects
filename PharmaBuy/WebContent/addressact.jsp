<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="web.ItemDAO" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>  
<%
//String uid=request.getParameter("mk");
//String pid=request.getParameter("id");
//int pidd=Integer.parseInt(pid);
//System.out.println
//System.out.println(uid
String unm="";
String uph="";
String uem="";
int phone=0;
String city=request.getParameter("City");
String address=request.getParameter("addr");
String flat=request.getParameter("flt");
String code=request.getParameter("code");


ItemDAO it=new ItemDAO();
try{
	int k=0;
	int f=0;
	Connection con= it.getConnection();
    Statement st=con.createStatement();
    /*ResultSet rs = st.executeQuery("select * from items where id='"+pid+"'");
    while (rs.next()) {
    	pname=rs.getString(2);
    	pprice=rs.getInt(4);
    	ptotal=pprice;
    	pquan=rs.getInt(5);
    }
    System.out.println(pname);
    System.out.println(pprice);
    System.out.println(ptotal);
    System.out.println(pquan);*/
    ResultSet us = st.executeQuery("select * from users where act='"+1+"'");
	while(us.next()){
		unm=us.getString(2);
		uph=us.getString(4);
		uem=us.getString(5);
		 }
	
	System.out.println(unm);
    System.out.println(uph);
    System.out.println(uem);
    
    ResultSet rs = st.executeQuery("select * from addr where name='"+unm+"'");
    while (rs.next()) {
    	phone=rs.getInt(2);
    }
    System.out.println(phone);
    if(phone>0)
    	response.sendRedirect("trunc.jsp");
    else
    {
    	PreparedStatement ps= con.prepareStatement("insert into addr(name,phone,email,city,address,flat,code) VALUES(?,?, ?, ?,?,?,?)");
    			//PreparedStatement ps= con.prepareStatement("INSERT INTO cart" + "  (id,name,quantity,price,total) VALUES " +
    	      	//  " (?,?, ?, ?,?);");
    			
    	ps.setString(1,unm);
    	ps.setString(2,uph);
    	ps.setString(3,uem);
    	ps.setString(4,city);
    	ps.setString(5,address);
    	ps.setString(6,flat);
    	ps.setString(7,code);
  		ps.executeUpdate();
  		response.sendRedirect("trunc.jsp");
    	//response.sendRedirect("ListofITems2.jsp?msg=added");
    }		
    		
}
catch(Exception e)
{
	System.out.println(e);
}
%>
