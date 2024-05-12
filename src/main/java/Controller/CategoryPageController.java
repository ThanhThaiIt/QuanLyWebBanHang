package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Product;
import DAO.CategoryPageDAO;
import DAO.ProductDAO;

@WebServlet("/CategoryPageController")
public class CategoryPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CategoryPageController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int idCat = Integer.parseInt(request.getParameter("cate"));

		if (idCat == 0) {
			try {
				List<Product> allProduct = CategoryPageDAO.getAllProduct();
				Map<Product, List<String>> mapAllProduct = new HashMap<Product, List<String>>();

				if (allProduct != null) {
					for (int i = 0; i < allProduct.size(); i++) {
						List<String> listImage = ProductDAO.getImageById(allProduct.get(i).getId());// list.get(i).getId()
																									// trỏ đến
						// từng Product để lấy sản
						// phầm tương ứng theo ID
						mapAllProduct.put(allProduct.get(i), listImage);
					}
				}

				request.setAttribute("AllProduct", mapAllProduct);
				RequestDispatcher rd = request.getRequestDispatcher("View/front-end/CategoryPage.jsp");
				rd.forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}

		

	}

}
