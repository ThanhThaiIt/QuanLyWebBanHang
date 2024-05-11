package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.paypal.api.payments.PayerInfo;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.PayPalRESTException;

import DAO.WPaymentServices;

@WebServlet("/ExecutePayment")
public class ExecutePayment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ExecutePayment() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String paymentId = request.getParameter("paymentId");
		String payerId = request.getParameter("PayerID");

		try {
			WPaymentServices wPaymentServices = new WPaymentServices();
			Payment payment = wPaymentServices.executePayment(paymentId, payerId);
			
			PayerInfo payerInfo = payment.getPayer().getPayerInfo();
			Transaction transaction = payment.getTransactions().get(0);
			
			request.setAttribute("payer", payerInfo);
			request.setAttribute("transaction", transaction);			

			request.getRequestDispatcher("View/front-end/PaypalSuccessPage.jsp").forward(request, response);
		} catch (PayPalRESTException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
