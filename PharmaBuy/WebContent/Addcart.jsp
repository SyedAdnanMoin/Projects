<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="web.ItemDAO" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>  
<%
//String uid=request.getParameter("mk");
String pid=request.getParameter("id");
//int pidd=Integer.parseInt(pid);
System.out.println(pid);
//System.out.println(uid
String unm="";
int q=1;
int pprice=0;
String pname="";
int ptotal=0;
int ctotal=0;
int pquan=0;


ItemDAO it=new ItemDAO();
try{
	int k=0;
	int f=0;
	Connection con= it.getConnection();
    Statement st=con.createStatement();
    ResultSet rs = st.executeQuery("select * from items where id='"+pid+"'");
    while (rs.next()) {
    	pname=rs.getString(2);
    	pprice=rs.getInt(4);
    	ptotal=pprice;
    	pquan=rs.getInt(5);
    }
    System.out.println(pname);
    System.out.println(pprice);
    System.out.println(ptotal);
    System.out.println(pquan);
    ResultSet us = st.executeQuery("select * from users where act='"+1+"'");
	while(us.next()){
		unm=us.getString(2);
		 }
    ResultSet rs1 = st.executeQuery("select * from cart where id='"+pid+"' and uname='"+unm+"'");
    while(rs1.next()){
    	q=rs1.getInt(4);
    	if(pquan>=1)
    	{
    		ctotal=rs1.getInt(6);
    		ctotal=ctotal+ptotal;
  			q=q+1;
    		k=1;
    		pquan=pquan-1;
    	}
    	else
    		f=1;
    }
    //To get the user details.
    if(f==1)
    	response.sendRedirect("ListofITems2.jsp?msg=full");
    else if(f==0)
    {	
   		 if(k==1)
   		 {
    		st.executeUpdate("update cart set total="+ctotal+",quantity="+q+" where id='"+pid+"' and uname='"+unm+"'");
    		st.executeUpdate("update items set quantity="+pquan+" where id='"+pid+"'");
    		response.sendRedirect("ListofITems2.jsp?msg=exist");
    	 }	
    
    	if(k==0)
    	{
    		if(pquan>=1)
        	{
    			PreparedStatement ps= con.prepareStatement("insert into cart(uname,id,name,quantity,price,total) VALUES(?,?, ?, ?,?,?)");
    			//PreparedStatement ps= con.prepareStatement("INSERT INTO cart" + "  (id,name,quantity,price,total) VALUES " +
    	      	//  " (?,?, ?, ?,?);");
    			
    			ps.setString(1,unm);
    			ps.setString(2,pid);
    			ps.setString(3,pname);
    			ps.setInt(4,q);
    			ps.setInt(5,pprice);
    			ps.setInt(6,ptotal);
    			ps.executeUpdate();
    			pquan=pquan-1;
    			st.executeUpdate("update items set quantity="+pquan+" where id='"+pid+"'");
    			response.sendRedirect("ListofITems2.jsp?msg=added");
    		}
    		else{
    			response.sendRedirect("ListofITems2.jsp?msg=full");
    		}
		}
	}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
