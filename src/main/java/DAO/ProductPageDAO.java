package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Product;
import DB.DBConnection;

public class ProductPageDAO {
	
	public static List<Product> getAllProuct() throws SQLException {
		// thuc hien theo buoc huong dan torng slide
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;

		String sqlString = "SELECT * FROM product ";
		List<Product> list = new ArrayList<Product>();
		try {
			preparedStatement = connection.prepareStatement(sqlString);

			ResultSet resultset = preparedStatement.executeQuery();

			while (resultset.next())// tro den hang ke tiep
			{
				int id = resultset.getInt("id");
				int idSubCategory = resultset.getInt("idSubCategory");
				int idSupplier = resultset.getInt("idSupplier");
				String nameString = resultset.getString("name");
				int guarantee = resultset.getInt("guarantee");
				float price = resultset.getFloat("price");
				int discount = resultset.getInt("discount");
				int quantity = resultset.getInt("quantity");
				String video = resultset.getString("video");
				String description = resultset.getString("description");
				int idStatus = resultset.getInt("idStatus");
				int idType = resultset.getInt("idType");
				String create_at = resultset.getString("create_at");

				Product product = new Product(id, idSubCategory, idSupplier, nameString, guarantee, price, discount,
						quantity, video, description, idStatus, idType, create_at);
				list.add(product);

			}

			preparedStatement.close();
			resultset.close();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			connection.close();
		}
		return list;
	}
	
	public static List<Product> getRelateProduct(int cateID, int idProduct) throws SQLException {
		// thuc hien theo buoc huong dan torng slide
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;

		//String sqlString = "SELECT * FROM product WHERE idSubCategory='"+cateID+"'";
		String sqlString = "SELECT * FROM product WHERE idSubCategory='" + cateID + "' AND id != '" + idProduct + "'";
		List<Product> list = new ArrayList<Product>();
		try {
			preparedStatement = connection.prepareStatement(sqlString);

			ResultSet resultset = preparedStatement.executeQuery();

			while (resultset.next())// tro den hang ke tiep
			{
				int id = resultset.getInt("id");
				int idSubCategory = resultset.getInt("idSubCategory");
				int idSupplier = resultset.getInt("idSupplier");
				String nameString = resultset.getString("name");
				int guarantee = resultset.getInt("guarantee");
				float price = resultset.getFloat("price");
				int discount = resultset.getInt("discount");
				int quantity = resultset.getInt("quantity");
				String video = resultset.getString("video");
				String description = resultset.getString("description");
				int idStatus = resultset.getInt("idStatus");
				int idType = resultset.getInt("idType");
				String create_at = resultset.getString("create_at");

				Product product = new Product(id, idSubCategory, idSupplier, nameString, guarantee, price, discount,
						quantity, video, description, idStatus, idType, create_at);
				list.add(product);

			}

			preparedStatement.close();
			resultset.close();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			connection.close();
		}
		return list;
	}
	
	
//	public static int getCatagoriesID(int idProduct) throws SQLException {
//		Connection connection = DBConnection.Connection();
//		PreparedStatement preparedStatement = null;
//		String sqlString = "SELECT idSubCategory FROM product WHERE  id='"+idProduct+"'";
//		
//		int idCate =0;
//		
//		
//		try {
//			preparedStatement = connection.prepareStatement(sqlString);
//			ResultSet resultset = preparedStatement.executeQuery();
//			while (resultset.next()) {
//				
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//		
//	}
}
