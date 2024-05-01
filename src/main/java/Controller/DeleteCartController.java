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

@WebServlet("/DeleteCartController")
public class DeleteCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteCartController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("idd"));
		HttpSession session = request.getSession();
		List<Cart> listCart = (List<Cart>) session.getAttribute("listProduct");
		float sum;
		if (session.getAttribute("listProduct") == null) {
			sum = 0;
		} else {
			sum = (float) session.getAttribute("totalPrice");
		}

		for (int i = 0; i < listCart.size(); i++) {
			
			if (listCart.get(i).getId() == id) {
				sum -= listCart.get(i).getPrice();
				if (listCart.get(i).getQuantity() == 1) {
					listCart.remove(i);

				} else {
					
					int a = listCart.get(i).getQuantity();
					a--;
					listCart.get(i).setQuantity(a);

				}
				 
				break;

			}

		}


		
		session.setAttribute("totalPrice", sum);
		session.setAttribute("listProduct", listCart);
		RequestDispatcher rd = request.getRequestDispatcher("View/front-end/AddCart.jsp");
		rd.forward(request, response);
	}

}
