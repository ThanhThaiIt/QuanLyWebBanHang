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
import DAO.BannerDAO;
import DAO.ProductDAO;
import DB.DBConnection;

@WebServlet("/IndexController")
public class IndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public IndexController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Connection connection = DBConnection.Connection();

		try {// get banner
			List<String> listBanner = BannerDAO.getBanner();
			// get latest product
			List<Product> list = ProductDAO.getLatestProduct();
			Map<Product, List<String>> map = new HashMap<Product, List<String>>();
			if (list != null && listBanner != null) {

				for (int i = 0; i < list.size(); i++) {
					List<String> listImage = ProductDAO.getImageById(list.get(i).getId());// list.get(i).getId() trỏ đến
																							// từng Product để lấy sản
																							// phầm tương ứng theo ID
					map.put(list.get(i), listImage);
				}

				// Get Snaker
				List<Product> listSneaker = ProductDAO.getSneaker();
				Map<Product, List<String>> mapSnaker = new HashMap<Product, List<String>>();
				if (listSneaker != null) {
					for (int i = 0; i < listSneaker.size(); i++) {
						List<String> listImage = ProductDAO.getImageById(listSneaker.get(i).getId());// list.get(i).getId()
																										// trỏ đến từng
																										// Product để
																										// lấy sản phầm
																										// tương ứng
																										// theo ID
						mapSnaker.put(listSneaker.get(i), listImage);
					}
				}

				// Get watch
				List<Product> listWatch = ProductDAO.getWatch();
				Map<Product, List<String>> mapWatch = new HashMap<Product, List<String>>();
				if (listWatch != null) {
					for (int i = 0; i < listWatch.size(); i++) {
						List<String> listImage = ProductDAO.getImageById(listWatch.get(i).getId());// list.get(i).getId()
																									// trỏ đến từng
																									// Product để
																									// lấy sản phầm
																									// tương ứng
																									// theo ID
						mapWatch.put(listWatch.get(i), listImage);
					}
				}
				// Get New era cap
				List<Product> listCap = ProductDAO.getCap();
				Map<Product, List<String>> mapCap = new HashMap<Product, List<String>>();
				if (listCap != null) {
					for (int i = 0; i < listCap.size(); i++) {
						List<String> listImage = ProductDAO.getImageById(listCap.get(i).getId());// list.get(i).getId()
																									// trỏ đến từng
																									// Product để
																									// lấy sản phầm
																									// tương ứng
																									// theo ID
						mapCap.put(listCap.get(i), listImage);
					}
				}
				// Forward
				request.setAttribute("listCap", mapCap);// list CAP to jsp index.jsp
				request.setAttribute("listBannera", listBanner);// list banner to jsp index.jsp
				request.setAttribute("listProduct", map);// latest list
				request.setAttribute("listSneaker", mapSnaker);// Sneaker list
				request.setAttribute("listWatch", mapWatch);// Watch list
				RequestDispatcher rd = request.getRequestDispatcher("View/front-end/index.jsp");
				rd.forward(request, response);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
