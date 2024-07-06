package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Product;
import DAO.ProductCategoryDAO;

/**
 * Servlet implementation class EditProductControllerBE
 */
@WebServlet("/EditProductControllerBE")
public class EditProductControllerBE extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Product> listProduct;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditProductControllerBE() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int idString = Integer.parseInt(request.getParameter("id"));

		try {
			Product product = ProductCategoryDAO.getProductByID(idString);

			request.setAttribute("ProductEdit", product);
			RequestDispatcher rd = request.getRequestDispatcher("View/back-end/EditProductPage.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// ProductName Guarantee Price Discount Quantity Video description
		int idString = Integer.parseInt(request.getParameter("id"));
		String nameString = request.getParameter("ProductName");
		int guaran = Integer.parseInt(request.getParameter("Guarantee"));
		float price = Float.parseFloat(request.getParameter("Price"));
		int discount = Integer.parseInt(request.getParameter("Discount"));
		int quanli = Integer.parseInt(request.getParameter("Quantity"));
		String videoString = request.getParameter("Video");
		String descriptionsString = request.getParameter("description");
		Product product = new Product(idString, nameString, guaran, price, discount, quanli, videoString,
				descriptionsString);
		try {
			ProductCategoryDAO.updateProduct(product);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		try {
			listProduct = ProductCategoryDAO.getAllProuct();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		request.setAttribute("listProduct", listProduct);
		RequestDispatcher rd = request.getRequestDispatcher("View/back-end/category.jsp");
		rd.forward(request, response);
	}

}
