package Controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Product;
import DAO.CrudAdminProductDAO;
import ultil.Ultil;

/**
 * Servlet implementation class AddProductController
 */
@WebServlet("/AddProductController")
public class AddProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProductController() {
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
		 
		int[] listIntColor = Ultil.parstListStringToInterger(request.getParameterValues("color"));
		
		
		
		int[] listIntSize = Ultil.parstListStringToInterger(request.getParameterValues("size"));
		
		
		
		 int idSubCategory = 0;
		 if (request.getParameter("category") != null) {
			 idSubCategory = Integer.parseInt(request.getParameter("category"));
		}
		 
		 
		 int idSuppier = 0;
		 if (request.getParameter("supplier") != null) {
			 idSuppier = Integer.parseInt(request.getParameter("supplier"));
		}
		 
		 String name = request.getParameter("name");
		 int guarantee = Integer.parseInt(request.getParameter("guarantee"));
		 float price = Float.parseFloat(request.getParameter("price"));
		 int discount = Integer.parseInt(request.getParameter("discount"));
		 int quantity = Integer.parseInt(request.getParameter("quantity"));
		 String video = request.getParameter("video");
		 String description = request.getParameter("description");
		 
		 String statuss = null;
		 int statussInt = 0;
		 if (request.getParameter("status") != null) {
			 statuss = request.getParameter("status");
			 statussInt = Integer.parseInt(statuss);
			}
		 
		 String typee = null;
		 int typeeInt =0;
		 if (request.getParameter("type") != null) {
			 typee = request.getParameter("type");
			 typeeInt = Integer.parseInt(typee);
			}
		 
		 LocalDate currentDate = LocalDate.now();
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			String formattedDate = currentDate.format(formatter);
			
			Product product = new Product(idSubCategory, idSuppier, name, guarantee, price, discount, quantity, video, description, statussInt, typeeInt, formattedDate);
			
		 CrudAdminProductDAO.InserProduct(product,listIntColor,listIntSize);
}
}