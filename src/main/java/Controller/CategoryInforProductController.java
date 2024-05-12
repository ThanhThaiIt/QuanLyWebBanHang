package Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BEAN.Product;
import DAO.CategoryPageDAO;

 
@WebServlet("/CategoryInforProductController")
public class CategoryInforProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public CategoryInforProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageidstr = request.getParameter("pageid");
		if (pageidstr != null) {
			int pageid = Integer.parseInt(pageidstr);
			int count = 3;
			
			
			if (pageid == 1)
			{
				
			}
			else 
			{
				pageid = pageid -1;
				pageid = pageid * count +1;
			}
			
			List<Product> list = CategoryPageDAO.DisplayAllproduct(pageid, count);
			
			int sumrow = CategoryPageDAO.Countrow();
			int maxpageid= 0;
			
			if ((sumrow/count)%2==0)
			{
				maxpageid = (sumrow/count);
			}
			else
			{
				maxpageid = (sumrow/count)+1;
			}
			
			request.setAttribute("maxpageid",maxpageid);
			
			request.setAttribute("listgrammarguidelinemanage",list);
			
			request.setAttribute("numberpage",Integer.parseInt(pageidstr));
			
			RequestDispatcher rd = request.getRequestDispatcher("View/front-end/CategoryPage.jsp");
			rd.forward(request,response);
		}
	}

}
