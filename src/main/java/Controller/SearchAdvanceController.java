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
			int count = 4;

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
				
				e.printStackTrace();
			}

			Map<Product, List<String>> mapAllProduct = new HashMap<Product, List<String>>();
			List<String> listImage = new ArrayList<String>();
			if (listProducts != null) {
				for (int i = 0; i < listProducts.size(); i++) {
					try {
						listImage = CategoryPageDAO.getImageById(listProducts.get(i).getId());
					} catch (SQLException e) {
						
						e.printStackTrace();
					} // list.get(i).getId()
						// trỏ đến
						// từng Product để lấy sản
						// phầm tương ứng theo ID
					mapAllProduct.put(listProducts.get(i), listImage);
				}
			}

			float sumrow = (float) CategorySearchAdvanceDAO.Countrow(listIntBrand, listIntColor, listIntSize);
			

			
			
			
			int maxpageid =  0;
			float sumCount =  (sumrow / count);
			int trSumCount = (int) (sumrow / count);
			float xx = sumCount - trSumCount;
			if (sumCount % 2 == 0) {
				maxpageid = (int) (sumCount-xx);
			} else {
				maxpageid = (int) (sumCount-xx + 1);
			}

			request.setAttribute("maxpageid", maxpageid);

			request.setAttribute("AllProduct", mapAllProduct);

			request.setAttribute("numberpage", Integer.parseInt(pageidstr));
			
			if (listIntBrand != null) {
				request.setAttribute("listBrand", Ultil.convertIntArrayToString(listIntBrand));
			}		
			
			if (listIntColor != null) {
				request.setAttribute("listColor",Ultil.convertIntArrayToString(listIntColor) );
			}
			
			if (listIntSize != null) {
				request.setAttribute("listSize",Ultil.convertIntArrayToString(listIntSize));
			}
			
//			request.setAttribute("listColor",Ultil.convertIntArrayToString(listIntColor) );
//			request.setAttribute("listSize",Ultil.convertIntArrayToString(listIntSize));
			
				
			request.setAttribute("stt", 1);
			RequestDispatcher rd = request.getRequestDispatcher("View/front-end/CategoryPage.jsp");
			rd.forward(request, response);

		}
	}

}



//int sumrow =19;
//int maxpageid = 0;
//
//if ((sumrow / count) % 2 == 0) {
//	maxpageid = (sumrow / count);
//} else if((sumrow / count) % 2 != 0) {
//	maxpageid = (sumrow / count) + 1;
//}
//
//request.setAttribute("AllProduct", mapAllProduct);
//request.setAttribute("maxpageid", maxpageid);
//request.setAttribute("numberpage", Integer.parseInt(pageidstr));
