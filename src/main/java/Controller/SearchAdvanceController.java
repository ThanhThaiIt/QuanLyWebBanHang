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
import DAO.CategorySearchAdvanceDAO;
import ultil.Ultil;

@WebServlet("/SearchAdvanceController")
public class SearchAdvanceController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SearchAdvanceController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String pageidstr = request.getParameter("pageid");

		if (pageidstr != null) {
			int pageid = Integer.parseInt(pageidstr);
			int count = 8;

			if (pageid == 1) {
				pageid = 0;
			} else {
				pageid = pageid - 1;
				pageid = pageid * count;
			}

			int[] listIntBrand = Ultil.parstListStringToInterger(request.getParameterValues("brand"));
			int[] listIntColor = Ultil.parstListStringToInterger(request.getParameterValues("color"));
			int[] listIntSize = Ultil.parstListStringToInterger(request.getParameterValues("size"));
			List<Product> listProducts = new ArrayList<Product>();
			try {
				listProducts = CategorySearchAdvanceDAO.getFilterProduct(listIntBrand, listIntColor, listIntSize,pageid, count);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			Map<Product, List<String>> mapAllProduct = new HashMap<Product, List<String>>();
			List<String> listImage = new ArrayList<String>();
			if (listProducts != null) {
				for (int i = 0; i < listProducts.size(); i++) {
					try {
						listImage = CategoryPageDAO.getImageById(listProducts.get(i).getId());
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} // list.get(i).getId()
						// trỏ đến
						// từng Product để lấy sản
						// phầm tương ứng theo ID
					mapAllProduct.put(listProducts.get(i), listImage);
				}
			}

			int sumrow = listProducts.size();
			int maxpageid = 0;

			if ((sumrow / count) % 2 == 0) {
				maxpageid = (sumrow / count);
			} else {
				maxpageid = (sumrow / count) + 1;
			}

			request.setAttribute("AllProduct", mapAllProduct);
			request.setAttribute("maxpageid", maxpageid);
			request.setAttribute("numberpage", Integer.parseInt(pageidstr));
			request.setAttribute("stt", 1);
			RequestDispatcher rd = request.getRequestDispatcher("View/front-end/CategoryPage.jsp");
			rd.forward(request, response);

		}
	}

}
