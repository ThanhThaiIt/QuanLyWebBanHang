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
import DAO.ProductDAO;
import DAO.SearchDAO;

 
@WebServlet("/SearchController")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public SearchController() {
        super();
        // TODO Auto-generated constructor stub
    }

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String name = request.getParameter("searchname");
		 
		 List<Product> products = SearchDAO.DisplaySearch(request, name);
		 Map<Product, List<String>> map = new HashMap<Product, List<String>>();
			if (products != null ) {

				for (int i = 0; i < products.size(); i++) {
					List<String> listImage;
					try {
						listImage = SearchDAO.getImageByIdSearch(products.get(i).getId());
						map.put(products.get(i), listImage);
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();

					}// list.get(i).getId() trỏ đến
																							// từng Product để lấy sản
																							// phầm tương ứng theo ID
					
				}
		 request.setAttribute("listemp", map);
			RequestDispatcher rd = request.getRequestDispatcher("View/front-end/SearchAjax.jsp");
			rd.forward(request, response);
	}

	}}
