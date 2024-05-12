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
import DAO.CategoryPageDAO;

 
@WebServlet("/CategoryInforProductController")
public class CategoryInforProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public CategoryInforProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Show product byid
		int idProductt = Integer.parseInt(request.getParameter("idProduct"));
		
		try {
			Product product = CategoryPageDAO.getProductByID(idProductt);
			
			if (product != null) {
				
				List<String> listImage = CategoryPageDAO.getImageById(idProductt);

				request.setAttribute("productDetail", product);
				request.setAttribute("productimage", listImage);
				RequestDispatcher rd = request.getRequestDispatcher("View/front-end/product_page.jsp");
				rd.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
