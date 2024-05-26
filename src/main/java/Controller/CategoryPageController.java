package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
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



		//String idCat = request.getParameter("idcate");
		String pageidstr = request.getParameter("pageid");
		//if (idCat.equals("0") ) {

			
			if (pageidstr != null) {
				int pageid = Integer.parseInt(pageidstr);
				int count = 8;

				if (pageid == 1) {
					pageid=0;
				} else {
					pageid = pageid - 1;
					pageid = pageid * count ;
				}

				List<Product> allProduct = CategoryPageDAO.DisplayAllproduct(pageid, count);
				Map<Product, List<String>> mapAllProduct = new HashMap<Product, List<String>>();
				List<String> listImage = new ArrayList<String>();
				if (allProduct != null) {
					for (int i = 0; i < allProduct.size(); i++) {
						try {
							listImage = CategoryPageDAO.getImageById(allProduct.get(i).getId());
						} catch (SQLException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} // list.get(i).getId()
							// trỏ đến
							// từng Product để lấy sản
							// phầm tương ứng theo ID
						mapAllProduct.put(allProduct.get(i), listImage);
					}
				}

				int sumrow = CategoryPageDAO.Countrow();
				int maxpageid = 0;

				if ((sumrow / count) % 2 == 0) {
					maxpageid = (sumrow / count);
				} else {
					maxpageid = (sumrow / count) + 1;
				}

				request.setAttribute("maxpageid", maxpageid);

				request.setAttribute("AllProduct", mapAllProduct);

				request.setAttribute("numberpage", Integer.parseInt(pageidstr));
				request.setAttribute("stt", 0);
				RequestDispatcher rd = request.getRequestDispatcher("View/front-end/CategoryPage.jsp");
				rd.forward(request, response);
				
				
			}

		}
//	}

}
//int idCat = Integer.parseInt(request.getParameter("cate"));
//
//if (idCat == 0) {
//	try {
//		List<Product> allProduct = CategoryPageDAO.getAllProduct();
//		Map<Product, List<String>> mapAllProduct = new HashMap<Product, List<String>>();
//
//		if (allProduct != null) {
//			for (int i = 0; i < allProduct.size(); i++) {
//				List<String> listImage = ProductDAO.getImageById(allProduct.get(i).getId());// list.get(i).getId()
//																							// trỏ đến
//				// từng Product để lấy sản
//				// phầm tương ứng theo ID
//				mapAllProduct.put(allProduct.get(i), listImage);
//			}
//		}
//
//		request.setAttribute("AllProduct", mapAllProduct);
//		RequestDispatcher rd = request.getRequestDispatcher("View/front-end/CategoryPage.jsp");
//		rd.forward(request, response);
//	} catch (SQLException e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	}
//
//}