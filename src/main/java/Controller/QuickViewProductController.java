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

import BEAN.Color;
import BEAN.Product;
import BEAN.Size;
import DAO.ProductDAO;
import DAO.ProductPageDAO;
import DB.DBConnection;

/**
 * Servlet implementation class QuickViewProductController
 */
@WebServlet("/QuickViewProductController")
public class QuickViewProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QuickViewProductController() {
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
		Connection connection = DBConnection.Connection();
		String idString = request.getParameter("id");
		int idInt = Integer.parseInt(idString);
		int cateProduct =0;
		try {
			
			//get product by id
			Product product = ProductDAO.getProductByID(idInt);
	
			// get size
			List<Integer> lSizeint = ProductPageDAO.getListSizeProduct(idInt);
			List<Size> lSize = ProductPageDAO.mapSize(lSizeint);
			
			// get color
			List<Color> lColor = ProductPageDAO.getListColor(idInt);

			if (product != null  && lSize !=null && lColor !=null) {
				List<String> listImage = ProductDAO.getImageById(idInt);

				request.setAttribute("productDetail", product);
				request.setAttribute("productimage", listImage);
				request.setAttribute("listSize", lSize);
				request.setAttribute("listColor", lColor);
				RequestDispatcher rd = request.getRequestDispatcher("View/front-end/QuickViewPageProduct.jsp");
				rd.forward(request, response);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
	}

}
