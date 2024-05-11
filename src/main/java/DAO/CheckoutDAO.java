package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.mysql.cj.x.protobuf.MysqlxCrud.Order;

import BEAN.Cart;
import BEAN.Oders;
import BEAN.Transaction;
import BEAN.User;
import DB.DBConnection;
import exception.EmailExitException;
import ultil.Ultil;

public class CheckoutDAO {
//	public static boolean InserAccount(  Transaction transaction ) throws SQLException // dangkydangnhapdungtruefalse
//, EmailExitException
//	{// thuc hien theo buoc huong dan torng slide
//		Connection connection = DBConnection.Connection();
//		PreparedStatement preparedStatement = null;
//
//		String sqlString = "insert into user(firsName,middleName,lastName,mobile,email,password,admin,address,create_at,isActive) values (?,?,?,?,?,?,?,?,?,1)";
//
//		try {
//			preparedStatement = connection.prepareStatement(sqlString);
//
//			
//
//			preparedStatement.setString(1, User.getFirstName());
//			preparedStatement.setString(2, User.getMiddleName());
//			preparedStatement.setString(3, User.getLastName());
//			preparedStatement.setString(4, User.getMobile());
//			preparedStatement.setString(5, User.getEmail());
//			preparedStatement.setString(6, User.getPassword());
//			preparedStatement.setInt(7, 1);
//			preparedStatement.setString(8, User.getAddress());
//			preparedStatement.setString(9, formattedDate);
//			if (!isEmailExit(User.getEmail())) {
//				int check = preparedStatement.executeUpdate();
//			}else {
//				throw new EmailExitException("Email Trung");
//			}
//			 
//			 
//			preparedStatement.close();
//
//		} catch (SQLException e) {
//			 
//			e.getMessage();
//		}finally {
//			connection.close();
//		}
//		return true;
//	}
	
	public static void InserTransaction(Transaction transaction, List<Cart> cart) //dangkydangnhapdungtruefalse
	{// thuc hien theo buoc huong dan torng slide
		int key =0;
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;
		
		String sqlString = "insert into transaction(idUser,firstName,lastName,email,total,address,town_city,state_county,phone,payment_method,status_order,create_at) values (?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			// get generate key(id của transaction)
			preparedStatement = connection.prepareStatement(sqlString,PreparedStatement.RETURN_GENERATED_KEYS);
			
			
			 
			
			preparedStatement.setInt(1, transaction.getIdUser());
			preparedStatement.setString(2, transaction.getFirstName());
			preparedStatement.setString(3, transaction.getLastName());
			preparedStatement.setString(4, transaction.getEmail());
			preparedStatement.setFloat(5, transaction.getTotal());
			preparedStatement.setString(6, transaction.getAddress());
			preparedStatement.setString(7, transaction.getTown_city());
			preparedStatement.setString(8, transaction.getState_county());
			preparedStatement.setString(9, transaction.getPhone());
			preparedStatement.setInt(10, transaction.getPayment_method());
			preparedStatement.setInt(11, transaction.getStatus_order());
			preparedStatement.setString(12, transaction.getCreate_at());
			
			preparedStatement.executeUpdate();
			
			
			//+ key(IdTransaction)
			ResultSet rs = preparedStatement.getGeneratedKeys();

			if (rs.next()) {
			    key = rs.getInt(1);
			}//+
			
			String sqlTransaction ="insert into oders(idTransaction,idProduct,qlt,price,price_old,sale,warranty,idSize,idColor,url_order,create_at) values (?,?,?,?,?,?,?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(sqlTransaction);
			for (int i = 0; i < cart.size(); i++) {
				
				preparedStatement.setInt(1, key);
				preparedStatement.setInt(2, cart.get(i).getId());
				preparedStatement.setInt(3, cart.get(i).getQuantity());
				preparedStatement.setFloat(4, cart.get(i).getPrice());
				preparedStatement.setFloat(5, cart.get(i).getPrice());
				preparedStatement.setInt(6, 0);
				preparedStatement.setInt(7, 0);
				preparedStatement.setInt(8, cart.get(i).getSize());
				preparedStatement.setInt(9, cart.get(i).getColor());
				preparedStatement.setString(10, "null");
				preparedStatement.setString(11, "2023-07-05");
				
				
				preparedStatement.executeUpdate();
				
			}
			
			
			
			preparedStatement.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	}
}
