package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import BEAN.UserGoogle;
import DAO.GoogleLoginDAO;

/**
 * Servlet implementation class LoginGoogleController
 */
@WebServlet("/LoginGoogleController")
public class LoginGoogleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginGoogleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println(request.getParameter("code"));
		String code = request.getParameter("code");
		String accessToken =   GoogleLoginDAO.getToken(code);
		UserGoogle userGoogle = GoogleLoginDAO.getUserInfo(accessToken);
		//System.out.println(userGoogle);
		String nameGoogle = GoogleLoginDAO.extractName(userGoogle.toString());
		//System.out.println(nameGoogle);
		HttpSession session = request.getSession(true);
		session.setAttribute("ssName", nameGoogle);
		RequestDispatcher rd = request.getRequestDispatcher("IndexController");
		rd.forward(request, response);
		
	}

}
