package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import BEAN.Cart;
import BEAN.Product;
import DB.DBConnection;
import ultil.Ultil;

public class CardDAO {

	public static Product getProductByID(int idProduct) throws SQLException {
	    Connection connection = null;
	    Statement stmt = null;
	    ResultSet resultSet = null;
	    
	    try {
	        connection = DBConnection.Connection();
	        stmt = connection.createStatement();
	        
	        String sqlString = "SELECT * FROM product WHERE id = '" + idProduct + "'";
	        resultSet = stmt.executeQuery(sqlString);
	        
	        if (resultSet.next()) {
	            int id = resultSet.getInt("id");
	            int idSubCategory = resultSet.getInt("idSubCategory");
	            int idSupplier = resultSet.getInt("idSupplier");
	            String nameString = resultSet.getString("name");
	            int guarantee = resultSet.getInt("guarantee");
	            float price = resultSet.getFloat("price");
	            int discount = resultSet.getInt("discount");
	            int quantity = resultSet.getInt("quantity");
	            String video = resultSet.getString("video");
	            String description = resultSet.getString("description");
	            int idStatus = resultSet.getInt("idStatus");
	            int idType = resultSet.getInt("idType");
	            String create_at = resultSet.getString("create_at");

	            Product product = new Product(id, idSubCategory, idSupplier, nameString, guarantee, price, discount,
	                    quantity, video, description, idStatus, idType, create_at);

	            return product;
	        } else {
	            // Không tìm thấy sản phẩm với id cụ thể
	            return null;
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        // Xử lý lỗi nếu cần thiết (ví dụ: ghi log)
	    } finally {
	        // Đảm bảo đóng các tài nguyên
	        Ultil.closeConnectionToDB(connection, stmt, resultSet);
	    }
	    
	    return null;
	}

	public static String getImageById(int idImage) throws SQLException {
		Connection connection = DBConnection.Connection();// mo ket noi
		Statement stmt = connection.createStatement();

		String sqlString = "SELECT url FROM images WHERE idProduct ='" + idImage + "'";
		ResultSet rs = stmt.executeQuery(sqlString);
		rs.next();
		String url1 = rs.getString("url");

		Ultil.closeConnectionToDB(connection, stmt, rs);
		return url1;
	}
}
