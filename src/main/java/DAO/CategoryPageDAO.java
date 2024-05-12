package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import BEAN.Product;
import DB.DBConnection;
import ultil.Ultil;

public class CategoryPageDAO {
	public static List<Product> getAllProduct() throws SQLException {
		// thuc hien theo buoc huong dan torng slide
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;

		String sqlString = "SELECT * FROM product";
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
	public static List<String> getImageById(int idImage) throws SQLException {
		Connection connection = DBConnection.Connection();// mo ket noi
		Statement stmt = connection.createStatement();
		List<String> list = new ArrayList<String>();
		String sqlString = "SELECT * FROM images WHERE idProduct ='" + idImage + "'";
		ResultSet rs = stmt.executeQuery(sqlString);
		rs.next();
		String url1 = rs.getString("url");
		String url2 = rs.getString("url1");
		String url3 = rs.getString("url2");
		String url4 = rs.getString("url3");
		list.add(url1);
		list.add(url2);
		list.add(url3);
		list.add(url4);
		Ultil.closeConnectionToDB(connection, stmt, rs);
		return list;
	}
	
	public static  Product getProductByID(int ids) throws SQLException {
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;

		String sqlString = "SELECT * FROM product WHERE id ='" + ids + "'";
		Product product = new Product();
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

				product.setId(id);
				product.setIdSubCategory(idSubCategory);
				product.setIdSupplier(idSupplier);
				product.setName(nameString);
				product.setGuarantee(guarantee);
				product.setPrice(price);
				product.setDiscount(discount);
				product.setQuantity(quantity);
				product.setVideo(video);
				product.setDescription(description);
				product.setIdStatus(idStatus);
				product.setIdType(idType);
				product.setCreate_at(create_at);
				

			}

			preparedStatement.close();
			resultset.close();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			connection.close();
		}
		return product;
	}
}
