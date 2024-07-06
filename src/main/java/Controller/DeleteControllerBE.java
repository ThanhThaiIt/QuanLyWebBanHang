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

@WebServlet("/DeleteControllerBE")
public class DeleteControllerBE extends HttpServlet {
	private static final long serialVersionUID = 1L;
	List<Product> listProduct;

    public DeleteControllerBE() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idString = Integer.parseInt(request.getParameter("id"));
		try {
			ProductCategoryDAO.deleteProduct(idString);
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
