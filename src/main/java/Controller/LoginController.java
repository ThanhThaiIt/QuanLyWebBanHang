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
import javax.servlet.http.HttpSession;

import BEAN.User;
import DAO.LoginDAO;
import DB.DBConnection;
import exception.EmailExitException;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("View/front-end/login.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection connection = DBConnection.Connection();
		String mailString = request.getParameter("maill");
		String passs = request.getParameter("passw");

		try {
			User user = LoginDAO.AuthenicationMember(mailString, passs);

			if (user != null) {

				if (user.getAdmin() == 1) {
					String nameUser = user.getLastName();
					int idUser = user.getId();
					HttpSession session = request.getSession(true);
					session.setAttribute("ssName", nameUser);
					session.setAttribute("ssID", idUser);
					RequestDispatcher rd = request.getRequestDispatcher("IndexController");
					rd.forward(request, response);
				} else {
					String nameUser = user.getLastName();
					int idUser = user.getId();
					HttpSession session = request.getSession(true);
					session.setAttribute("ssNameAdmin", nameUser);
					session.setAttribute("ssIDAdmin", idUser);
					RequestDispatcher rd = request.getRequestDispatcher("View/back-end/AdminIndex.jsp");
					rd.forward(request, response);
				}
			} else {
				request.setAttribute("msgLogin", "Sai Tai Khoan Hoac Mat Khau");
				RequestDispatcher rd = request.getRequestDispatcher("View/front-end/login.jsp");
				rd.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (EmailExitException e) {

		}

	}

}
