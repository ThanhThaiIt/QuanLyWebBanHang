package Controller;

import java.io.IOException;
import java.sql.Connection;
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
import DAO.ProductDAO;
import DB.DBConnection;

 
@WebServlet("/ProductController")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public ProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection connection = DBConnection.Connection();
		String idString = request.getParameter("id");
		int idInt = Integer.parseInt(idString);
		
		try {
			Product product = ProductDAO.getProductByID(idInt);
			 
			if (product!=null) {
				List<String> listImage = ProductDAO.getImageById(idInt);
				
				request.setAttribute("productDetail", product);
				request.setAttribute("productimage", listImage);
				RequestDispatcher rd = request.getRequestDispatcher("View/front-end/product_page.jsp");
				rd.forward(request, response);
			}
			
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		
		
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
	}

}
