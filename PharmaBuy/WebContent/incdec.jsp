<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="web.ItemDAO" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*" %>  
<%
//String uid=request.getParameter("mk");
String pid=request.getParameter("id");
String incdec=request.getParameter("quan");
System.out.println(pid);
System.out.println(incdec);
String unm="";
int q=0;
int pprice=0;
String pname="";
int ptotal=0;
int ftotal=0;
int pquan=0;

ItemDAO it=new ItemDAO();
try{
	int k=0;
	Connection con= it.getConnection();
    Statement st=con.createStatement();
    
    ResultSet us = st.executeQuery("select * from users where act='"+1+"'");
    while(us.next()){
    	unm=us.getString(2);
    }
    ResultSet rs1 = st.executeQuery("select * from cart where uname='"+unm+"' and id='"+pid+"'");
    while(rs1.next()){
    	ptotal=rs1.getInt(6);
    	pprice=rs1.getInt(5);
    	q=rs1.getInt(4);
    	//q=q+1;
    	//k=1;
    }
    
    //for updating items
    ResultSet rs = st.executeQuery("select * from items where id='"+pid+"'");
    while(rs.next()){
    	pquan=rs.getInt(5);
    }
    
    if(q==1 && incdec.equals("dec"))
    {
    	pquan=pquan+1;
    	st.executeUpdate(" DELETE from cart WHERE uname='"+unm+"' and id='"+pid+"'");
    	st.executeUpdate(" update items set quantity='"+pquan+"' WHERE id='"+pid+"'");
    	response.sendRedirect("Gotocart.jsp");
    }
    else if(q>1 && incdec.equals("dec"))
    {	
  		ptotal=ptotal-pprice;
  		q=q-1;
  		pquan=pquan+1;
  		st.executeUpdate("update cart set total="+ptotal+",quantity="+q+" where uname='"+unm+"' and id='"+pid+"'");
  		st.executeUpdate(" update items set quantity='"+pquan+"' WHERE id='"+pid+"'");
  		response.sendRedirect("Gotocart.jsp");
    }
    else if(incdec.equals("inc"))
    {
    	if(pquan>=1)
    	{	
    		pquan=pquan-1;
    		ptotal=+ptotal+pprice;
    		q=q+1;
    		st.executeUpdate("update cart set total="+ptotal+",quantity="+q+" where uname='"+unm+"' and id='"+pid+"'");
    		st.executeUpdate(" update items set quantity='"+pquan+"' WHERE id='"+pid+"'");
    		response.sendRedirect("Gotocart.jsp");
    	}
    	else
    	{
    		response.sendRedirect("Gotocart.jsp?msg=full");	
    	}
    }
}
catch(Exception e)
{
	System.out.println(e);
}
%>
   <!-- ResultSet rs = st.executeQuery("select * from items where id='"+pid+"'");
    while (rs.next()) {
    	pname=rs.getString(2);
    	pprice=rs.getInt(4);
    	ptotal=pprice;
    }
    System.out.println(pname);
    System.out.println(pprice);
    System.out.println(ptotal);
    ResultSet rs1 = st.executeQuery("select * from cart where id='"+pid+"'");
    while(rs1.next()){
    	ctotal=rs1.getInt(6);
    	ctotal=ctotal+ptotal;
    	q=rs1.getInt(4);
    	q=q+1;
    	k=1;
    }*/
    //To get the user details-->
