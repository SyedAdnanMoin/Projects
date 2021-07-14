package web;

import java.io.IOException;

import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web.UserDAO;
import model.User;

/**
 * ControllerServlet.java
 * This servlet acts as a page controller for the application, handling all
 * requests from the user.
 * @email Ramesh Fadatare
 */

@WebServlet("/")
public class UserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private UserDAO userDAO;

    public void init() {
        userDAO = new UserDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        doGet(request, response);
        /*String username = request.getParameter("name");
        String password = request.getParameter("password");
        User user = new User();
        user.setName(username);
        user.setPassword(password);

        try {
            if (userDAO.validate(user)) {
                //HttpSession session = request.getSession();
                // session.setAttribute("username",username);
                response.sendRedirect("ListofITems.jsp");
            } else {
                HttpSession session = request.getSession();
                //session.setAttribute("user", username);
                response.sendRedirect("SignInPageCOVID.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String action = request.getServletPath();

        try {
            switch (action) {
               // case "/new":
                 //   showNewForm(request, response);
                   // break;
                case "/insert":
                    insertUser(request, response);
                    break;
                case "/validate":
                    selectUser(request, response);
                    break;
               /*case "/edit":
                    showEditForm(request, response);
                    break;*/
                case "/update":
                    updateUser(request, response);
                    break;
                default:
                    //listUser(request, response);
                	System.out.print("Try");
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
    }

   /* private void listUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException, ServletException {
        List < User > listUser = userDAO.selectAllUsers();
        request.setAttribute("listUser", listUser);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-list.jsp");
        dispatcher.forward(request, response);
    }

    private void showNewForm(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
        dispatcher.forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        User existingUser = userDAO.selectUser(id);
        RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
        request.setAttribute("user", existingUser);
        dispatcher.forward(request, response);

    }*/

    private void insertUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        User newUser = new User(name, password, phone, email);
        userDAO.insertUser(newUser);
        response.sendRedirect("ListofITems2.jsp");
    }
    
    private void selectUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
    	String username = request.getParameter("name");
        String password = request.getParameter("password");
        User user = new User();
        user.setName(username);
        user.setPassword(password);

        try {
            if (userDAO.validate(user)) {
                //HttpSession session = request.getSession();
                // session.setAttribute("username",username);
                response.sendRedirect("Validate.jsp?nm="+username+"");
            } else {
                HttpSession session = request.getSession();
                //session.setAttribute("user", username);
                response.sendRedirect("SignInPageCOVID.jsp");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    private void updateUser(HttpServletRequest request, HttpServletResponse response)
    	    throws SQLException, IOException {
    	        String name = request.getParameter("name");
    	        String password = request.getParameter("password");
    	        String vpassword = request.getParameter("password1");
    	        
    	        if(password.equals(vpassword))
    	        {	
    	        	boolean k=false;
    	        	User book = new User(name, password);
    	        	k=userDAO.updateUser(book);
    	        	if(k)
    	        		response.sendRedirect("ForgetPassCOVID.jsp?ver=pass");
    	        	else {
    	        		response.sendRedirect("ForgetPassCOVID.jsp?ver=ude");
    	        	}
    	        }
    	        else
    	        {
    	        	response.sendRedirect("ForgetPassCOVID.jsp?ver=fail");
    	        }
    	    }
    
   

   /* private void deleteUser(HttpServletRequest request, HttpServletResponse response)
    throws SQLException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        userDAO.deleteUser(id);
        response.sendRedirect("list");

    }*/
}
