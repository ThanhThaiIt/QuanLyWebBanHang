package Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.User;
import DAO.RegisterDAO;
import DB.DBConnection;
import exception.EmailExitException;

 
@WebServlet("/RegisterController")
public class RegisterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public RegisterController() {
        super();
        // TODO Auto-generated constructor stub
    }

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("View/front-end/RegisterA.jsp");
		rd.forward(request, response);
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  
		 
		 String fName = request.getParameter("fname");
		 String mName = request.getParameter("mname");
		 String lName = request.getParameter("lname");
		 String phone = request.getParameter("phone");
		 String mail = request.getParameter("mail");
		 String pass = request.getParameter("pass");
		 String address = request.getParameter("address");
		 
		 User sUser = new User();
		 sUser.setFirstName(fName);
		 sUser.setMiddleName(mName);
		 sUser.setLastName(lName);
		 sUser.setMobile(phone);
		 sUser.setEmail(mail);
		 sUser.setPassword(pass);
		 sUser.setAddress(address);
		 
		 boolean checkInsert;
		try {
			checkInsert = RegisterDAO.InserAccount( sUser);
			if (checkInsert) {
				 
					RequestDispatcher rd = request.getRequestDispatcher("View/front-end/login.jsp");
					rd.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (EmailExitException e) {
			// TODO Auto-generated catch block
			request.setAttribute("msgregister", "Trung emmail");
			RequestDispatcher rd = request.getRequestDispatcher("View/front-end/RegisterA.jsp");
			rd.forward(request, response);
		} 
		 
	}

}
