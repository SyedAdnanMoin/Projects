<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="web.ItemDAO" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>  
<%

ItemDAO it=new ItemDAO();
String nam=request.getParameter("nm");
System.out.println(nam);
String unm="";
try{
	//int k=0;
	Connection con= it.getConnection();
    Statement st=con.createStatement();
    ResultSet us = st.executeQuery("select * from users where act='"+1+"'");
    while(us.next()){
    	unm=us.getString(2);
    }
    //st.executeUpdate("update users set act='"+0+"' where name='"+unm+"'");
    
    st.executeUpdate("update users set act="+0+" where act="+1+"");
    st.executeUpdate("update users set act="+1+" where name='"+nam+"'");
    response.sendRedirect("ListofITems2.jsp");
}
catch(Exception e)
{
	System.out.println(e);
}
%>
