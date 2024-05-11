package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import BEAN.Cart;
import BEAN.Product;
import DAO.CardDAO;

@WebServlet("/CartController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CartController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try (PrintWriter out = response.getWriter()) {

			int id = Integer.parseInt(request.getParameter("id"));
			int size = Integer.parseInt(request.getParameter("size"));
			int colors = Integer.parseInt(request.getParameter("color"));
			// lấy sản phảm dựa vào hình ảnh
			Product product = CardDAO.getProductByID(id);
			String images = CardDAO.getImageById(id);
			// lấy một product từ database, chuyển nó về thành cart
			Cart cart = new Cart(product, images,size,colors);
			int check = 0;
			HttpSession session = request.getSession();
			List<Cart> cart_List = (List<Cart>) session.getAttribute("listProduct");
			float sum;
			if (cart_List == null) {
				sum = 0;
			} else {
				sum = (float) session.getAttribute("totalPrice");
			}
			if (cart_List == null) {
				cart_List = new ArrayList<Cart>();
				cart_List.add(cart);
				// session.setAttribute("cart_list", cart_List);

			} else {
				for (Cart cart2 : cart_List) {
					if (cart2.getId() == id) {
						// check nếu giỏ hàng có sản phẩm đó rồi,
						// thì chỉ tăng số lượng hiện tại lên 1
						int a = cart2.getQuantity();
						a++;
						cart2.setQuantity(a);
						check = 1;
					}
				}

				if (check == 0) {
					cart_List.add(cart);
				}

			}

			int index = 0;
			for (int i = 0; i < cart_List.size(); i++) {
				if (cart_List.get(i).getId() == id) {
					index = i;
					break;
				}
			}

//			int sll = cart_List.size();
//			if (sll !=0) {
//				request.setAttribute("soluong", sll);
//				RequestDispatcher rd = request.getRequestDispatcher("View/front-end/index.jsp");
//				rd.forward(request, response);
//			}

			sum += cart_List.get(index).getPrice();

			session.setAttribute("totalPrice", sum);
			session.setAttribute("listProduct", cart_List);
			// request.setAttribute("image", images);
			// request.setAttribute("List_Product_Card", cart_List);
			RequestDispatcher rd = request.getRequestDispatcher("View/front-end/AddCart.jsp");
			rd.forward(request, response);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
