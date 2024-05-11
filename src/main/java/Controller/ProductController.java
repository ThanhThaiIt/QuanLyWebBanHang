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

@WebServlet("/ProductController")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProductController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection connection = DBConnection.Connection();
		String idString = request.getParameter("id");
		int idInt = Integer.parseInt(idString);
		int cateProduct =0;
		try {
			
			//get product by id
			Product product = ProductDAO.getProductByID(idInt);
			 
			
			
			//get cateid
			List<Product> allProduct = ProductPageDAO.getAllProuct();
			
			for (int i = 0; i < allProduct.size(); i++) {
				if (allProduct.get(i).getId()==idInt) {
					cateProduct =	 allProduct.get(i).getIdSubCategory();
					break;
				}
			}
			
			// list ralate product
						List<Product> listProduct = ProductPageDAO.getRelateProduct(cateProduct,idInt);
						Map<Product, List<String>> listWithImageMap = new HashMap<Product, List<String>>();
			if (listProduct != null) {
				for (int i = 0; i < listProduct.size(); i++) {
					List<String> listImage = ProductDAO.getImageById(listProduct.get(i).getId());

					listWithImageMap.put(listProduct.get(i), listImage);
				}
			}
			
			// get size
			List<Integer> lSizeint = ProductPageDAO.getListSizeProduct(idInt);
			List<Size> lSize = ProductPageDAO.mapSize(lSizeint);
			
			// get color
			List<Color> lColor = ProductPageDAO.getListColor(idInt);

			if (product != null && listWithImageMap !=null && lSize !=null && lColor !=null) {
				List<String> listImage = ProductDAO.getImageById(idInt);

				request.setAttribute("productDetail", product);
				request.setAttribute("productimage", listImage);
				request.setAttribute("ListProductRalate", listWithImageMap);
				request.setAttribute("listSize", lSize);
				request.setAttribute("listColor", lColor);
				RequestDispatcher rd = request.getRequestDispatcher("View/front-end/product_page.jsp");
				rd.forward(request, response);
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
