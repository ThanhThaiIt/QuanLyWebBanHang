package DB;
import java.sql.*;
public class DBConnection {

		public static Connection Connection()  
		{
			Connection conn = null;
			//declare the information to connect with driver Sql
			String urlString ="jdbc:mysql://localhost:3307/webbanhang";
			String username="root";
			String passsword ="090902";
			try {
				//Load driver
				Class.forName("com.mysql.jdbc.Driver");
				//create connection
				conn = DriverManager.getConnection(urlString, username, passsword);
			} catch (ClassNotFoundException e) {
				 
				e.printStackTrace();
			}catch (SQLException e) {
				 
				e.printStackTrace();
			}
			 
			
			return conn;
		}
}
