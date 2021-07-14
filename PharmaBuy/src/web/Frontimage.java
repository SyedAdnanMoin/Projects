package web;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Dimage
 */
@WebServlet("/Frontimage")
public class Frontimage extends HttpServlet {
	private static final long serialVersionUID = 1L;


	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			byte[]img=null;
			ServletOutputStream sos=null;
			String pid=request.getParameter("id");
			System.out.println(pid);
			System.out.println("Image recieved");
			
			ItemDAO it= new ItemDAO();
			Connection con = it.getConnection();
			Statement st=con.createStatement();
			ResultSet rs = st.executeQuery("select * from fim where id="+pid+"");
        
			while(rs.next())
			{
				img=rs.getBytes(1);
			}
			sos=response.getOutputStream();
			sos.write(img);
		}catch(Exception e)
		{
			System.out.println(e);
		}
		
		
	}
}