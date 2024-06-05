package Controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import BEAN.Product;
import DAO.CrudAdminProductDAO;
import ultil.Ultil;

/**
 * Servlet implementation class AddProductController
 */
@MultipartConfig
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("View/back-end/add-product.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// solving for product image
		Part part1 = request.getPart("file1");
		Part part2 = request.getPart("file2");
		Part part3 = request.getPart("file3");
		Part part4 = request.getPart("file4");

		String fileName1 = Path.of(part1.getSubmittedFileName()).getFileName().toString();
		String fileName2 = Path.of(part2.getSubmittedFileName()).getFileName().toString();
		String fileName3 = Path.of(part3.getSubmittedFileName()).getFileName().toString();
		String fileName4 = Path.of(part4.getSubmittedFileName()).getFileName().toString();

		String uploadPath1 = "/Users/thanh/eclipse-workspace/QuanLyWebBanHang/src/main/webapp/View/assets/images/fashion/product/"
				+ fileName1; // upload path where we have to upload our actual image
		String uploadPath2 = "/Users/thanh/eclipse-workspace/QuanLyWebBanHang/src/main/webapp/View/assets/images/fashion/product/"
				+ fileName2;
		String uploadPath3 = "/Users/thanh/eclipse-workspace/QuanLyWebBanHang/src/main/webapp/View/assets/images/fashion/product/"
				+ fileName3;
		String uploadPath4 = "/Users/thanh/eclipse-workspace/QuanLyWebBanHang/src/main/webapp/View/assets/images/fashion/product/"
				+ fileName4;

		Thread thread1 = new Thread(new Runnable() {

			@Override
			public void run() {
				System.out.println("thre1");
				addImgToFolder(uploadPath1, part1);

			}
		});
		thread1.start();

		Thread thread2 = new Thread(new Runnable() {

			@Override
			public void run() {
				System.out.println("thre2");
				addImgToFolder(uploadPath2, part2);

			}
		});
		thread2.start();
		
		
		Thread thread3 = new Thread(new Runnable() {

			@Override
			public void run() {
				System.out.println("thre3");
				addImgToFolder(uploadPath3, part3);

			}
		});
		thread3.start();
		
		Thread thread4 = new Thread(new Runnable() {

			@Override
			public void run() {
				
				addImgToFolder(uploadPath4, part4);
				System.out.println("thre4");
			}
		});
		thread4.start();
		
		try {
			
			thread1.join();
			
			thread2.join();
			thread3.join();
			thread4.join();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("hello");

		List<String> listImage = new ArrayList<String>();
		listImage.add("/assets/images/fashion/product/" + fileName1);
		listImage.add("/assets/images/fashion/product/" + fileName2);
		listImage.add("/assets/images/fashion/product/" + fileName3);
		listImage.add("/assets/images/fashion/product/" + fileName4);
		// solving for product information
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
		int typeeInt = 0;
		if (request.getParameter("type") != null) {
			typee = request.getParameter("type");
			typeeInt = Integer.parseInt(typee);
		}

		LocalDate currentDate = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
		String formattedDate = currentDate.format(formatter);

		Product product = new Product(idSubCategory, idSuppier, name, guarantee, price, discount, quantity, video,
				description, statussInt, typeeInt, formattedDate);

		CrudAdminProductDAO.InserProduct(product, listIntColor, listIntSize, listImage);

//		RequestDispatcher rd = request.getRequestDispatcher("View/back-end/add-product.jsp");
//		rd.forward(request, response);
		response.sendRedirect("LoadSizeColorr");

	}

	private void addImgToFolder(String uploadPath, Part part) {
		try {

			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream is = part.getInputStream();

			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();

		}

		catch (Exception e) {
			e.printStackTrace();
		}

	}
}