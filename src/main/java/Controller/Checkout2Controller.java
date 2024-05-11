package Controller;

import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.paypal.base.rest.PayPalRESTException;

import BEAN.Cart;
import BEAN.Transaction;
import BEAN.WOrderDetail;
import DAO.CheckoutDAO;
import DAO.WPaymentServices;
import ultil.Ultil;

@WebServlet("/Checkout2Controller")
public class Checkout2Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Checkout2Controller() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// lấy ngày giờ hiện tại để hiển thị trong order
		LocalDate currentDate = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String formattedDate = currentDate.format(formatter);

		HttpSession session = request.getSession();
		int idUser = (int) session.getAttribute("ssID");
		String fName = request.getParameter("fname");
		String lName = request.getParameter("lname");
		String emailString = request.getParameter("email");
		float total = (float) session.getAttribute("totalPrice");
		String addr = request.getParameter("address");
		String townCity = request.getParameter("towncity");
		String country = null;
		int contryInt = 0;
		if (request.getParameter("Points") != null) {
			country = request.getParameter("Points");
			contryInt = Integer.parseInt(country);
		}
		String countryStr = Ultil.mapCountry.get(contryInt);
		// String stateContry = request.getParameter("statecountry");
		String phone = request.getParameter("phone");
		int paymentMethod = 5;
		if (request.getParameter("payment-group") != null) {
			paymentMethod = Integer.parseInt(request.getParameter("payment-group"));
		}
		int statusOder = 1;
		String day = formattedDate;
		

		
		if (paymentMethod == 1) {
			try {
				List<Cart> cartList = (List<Cart>) session.getAttribute("listProduct");

				List<String> nameProduct = new ArrayList<String>();

				for (Cart cart : cartList) {
					nameProduct.add(cart.getName());
				}
				WOrderDetail wOrderDetail = new WOrderDetail(nameProduct, total, total);
				WPaymentServices wPaymentServices = new WPaymentServices();
				String approvalLink = wPaymentServices.authorizePayment(wOrderDetail);
				
				
				// Start insert cart into database "Transaction"
				List<Cart> cart_List = (List<Cart>) session.getAttribute("listProduct");
				
				Transaction transaction = new Transaction(idUser, fName, lName, emailString, total, addr, townCity, countryStr,
						phone, paymentMethod, statusOder, day);
				
				CheckoutDAO.InserTransaction(transaction,cart_List);
				// end insert into database "Transaction"
				response.sendRedirect(approvalLink);
				
			} catch (PayPalRESTException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		if (paymentMethod==0) {
			Transaction transaction = new Transaction(idUser, fName, lName, emailString, total, addr, townCity, countryStr,
					phone, paymentMethod, statusOder, day);
			List<Cart> cart_List = (List<Cart>) session.getAttribute("listProduct");
			CheckoutDAO.InserTransaction(transaction,cart_List);
			RequestDispatcher rd = request.getRequestDispatcher("View/front-end/checkout.jsp");
			rd.forward(request, response);
		}
		
		
	}

}
