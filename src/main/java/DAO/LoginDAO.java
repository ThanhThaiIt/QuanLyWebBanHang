package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

 
import BEAN.User;
import DB.DBConnection;
import exception.EmailExitException;

public class LoginDAO {
	public static User AuthenicationMember(String emailU, String passWord) throws SQLException, EmailExitException {// xac thuc
		// thuc hien theo buoc huong dan torng slide
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;
		String test = "fail";
		String sqlString = "select * from user where email='"+emailU+"' AND password='"+passWord+"'";
		
		try {
			preparedStatement = connection.prepareStatement(sqlString);

			ResultSet resultset = preparedStatement.executeQuery();

			while (resultset.next())// tro den hang ke tiep
			{  
				int id = resultset.getInt("id");
				String fName = resultset.getString("firsName");
				String mName = resultset.getString("middleName");
				String lName = resultset.getString("lastName");
				String moble = resultset.getString("mobile");
				String email = resultset.getString("email");
				String pass = resultset.getString("password");
				int cate = resultset.getInt("admin");
				String addr = resultset.getString("address");
				int acTive = resultset.getInt("isActive");
				String create_at = resultset.getString("create_at");
				
				User user = new User(id, fName, mName, lName, moble, email, passWord, cate, addr, acTive, create_at);
				
				return user;
				
//				if (emailU.equals(email) && passWord.equals(pass)) {
//					test = "success";
//				}else {
//					throw new EmailExitException("Dang Nhap Fail");
//				}
			}

			preparedStatement.close();
			resultset.close();

		} catch (SQLException e) {
			 
			e.printStackTrace();
		}finally {
			connection.close();
		}
		return null;

	}
	
//	public static int AuthorzationMember( String emailU, String passWord ) {// xac thuc
//		// thuc hien theo buoc huong dan torng slide
//		
//				PreparedStatement preparedStatement = null;
//				
//				 
//				String sql1 = "select admin from user where email='"+emailU+"' AND password='"+passWord+"'";
//				int cateID =0;
//				try {
//					//preparedStatement = connection.prepareStatement(sql1);
//					
//					ResultSet resultset =   preparedStatement.executeQuery();
//					
//					 
//					while (resultset.next())// tro den hang ke tiep
//					{
//						  
//						   cateID = resultset.getInt("admin");
//						  
//						  
//					}
//					
//					preparedStatement.close();
//					resultset.close();
//					
//				} catch (SQLException e) {
//					 e.getMessage();
//				}
//				return cateID;
//				
//				 
//				 
//	}
}
