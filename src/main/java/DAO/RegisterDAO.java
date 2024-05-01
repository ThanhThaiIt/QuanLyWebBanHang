package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpServletRequest;

import BEAN.User;
import DB.DBConnection;
import exception.EmailExitException;
import ultil.Ultil;

public class RegisterDAO {

	public static boolean InserAccount(  User User ) throws SQLException // dangkydangnhapdungtruefalse
, EmailExitException
	{// thuc hien theo buoc huong dan torng slide
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;

		String sqlString = "insert into user(firsName,middleName,lastName,mobile,email,password,admin,address,create_at,isActive) values (?,?,?,?,?,?,?,?,?,1)";

		try {
			preparedStatement = connection.prepareStatement(sqlString);

			LocalDate currentDate = LocalDate.now();
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			String formattedDate = currentDate.format(formatter);

			preparedStatement.setString(1, User.getFirstName());
			preparedStatement.setString(2, User.getMiddleName());
			preparedStatement.setString(3, User.getLastName());
			preparedStatement.setString(4, User.getMobile());
			preparedStatement.setString(5, User.getEmail());
			preparedStatement.setString(6, User.getPassword());
			preparedStatement.setInt(7, 1);
			preparedStatement.setString(8, User.getAddress());
			preparedStatement.setString(9, formattedDate);
			if (!isEmailExit(User.getEmail())) {
				int check = preparedStatement.executeUpdate();
			}else {
				throw new EmailExitException("Email Trung");
			}
			 
			 
			preparedStatement.close();

		} catch (SQLException e) {
			 
			e.getMessage();
		}finally {
			connection.close();
		}
		return true;
	}

	private static boolean isEmailExit(  String email ) throws SQLException {
		Connection connection = DBConnection.Connection();// mo ket noi
		 Statement stmt = connection.createStatement();
		 String sql = "select COUNT(*) as research from user where email like '" + email+"'" ;
		 ResultSet rs = stmt.executeQuery(sql);
		 rs.next();
		int result = rs.getInt("research");
		
		Ultil.closeConnectionToDB(connection, stmt, rs);
		
		return result == 0 ? false : true;
		
		 
	}
}
