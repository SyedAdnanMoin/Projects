<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="web.ItemDAO" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>  
<%

ItemDAO it=new ItemDAO();
String unm="";
try{
	//int k=0;
	Connection con= it.getConnection();
    Statement st=con.createStatement();
    ResultSet us = st.executeQuery("select * from users where act='"+1+"'");
    while(us.next()){
    	unm=us.getString(2);
    }
    st.executeUpdate(" DELETE from cart WHERE uname='"+unm+"'");
    response.sendRedirect("Contd.jsp");

}
catch(Exception e)
{
	System.out.println(e);
}
%>
