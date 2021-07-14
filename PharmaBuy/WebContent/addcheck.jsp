<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="web.ItemDAO" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>  
<%

try{
	String unm="";
	int k=0;
	ItemDAO it= new ItemDAO();
    Connection con = it.getConnection();
    Statement st=con.createStatement();
    ResultSet rs = st.executeQuery("select * from users where act='"+1+"'");
    while (rs.next()) {
    	rs.getString(2);
    }
    ResultSet rs1 = st.executeQuery("select name from addr");
    while (rs1.next()) {
    	if(rs1.getString(1).equals(unm))
    		k=1;
    }
    if(k==1){
    	response.sendRedirect("trunc.jsp");
    	}
    else{
    	response.sendRedirect("address.jsp");
    }
	
}catch (Exception e) {
            System.out.println(e);
        }

   
%>