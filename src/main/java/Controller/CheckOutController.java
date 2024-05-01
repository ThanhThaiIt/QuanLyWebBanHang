package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BEAN.Cart;

 
@WebServlet("/CheckOutController")
public class CheckOutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public CheckOutController() {
        super();
        // TODO Auto-generated constructor stub
    }

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		HttpSession session = request.getSession();
		String userName = (String) session.getAttribute("ssName");
		if (userName == null) {
			RequestDispatcher rd = request.getRequestDispatcher("View/front-end/login.jsp");
			rd.forward(request, response);
		}else {
			List<Cart> cart_List = (List<Cart>) session.getAttribute("listProduct");
			float summ;
			if (session.getAttribute("listProduct") == null) {
				summ=0;
			}else {
				summ = (float) session.getAttribute("totalPrice");
			}
			 
			
			
			session.setAttribute("totalPrice", summ);
			session.setAttribute("listProduct", cart_List);
			RequestDispatcher rd = request.getRequestDispatcher("View/front-end/checkout.jsp");
			rd.forward(request, response);
		}
	}

}
