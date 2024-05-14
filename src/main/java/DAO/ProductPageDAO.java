package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Color;
import BEAN.Product;
import BEAN.Size;
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
		String sqlString = "SELECT * FROM product WHERE idStatus != 1 AND idSubCategory='" + cateID + "' AND id != '" + idProduct + "'";
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
	
	
	
	
	public static List<Integer> getListSizeProduct(int idProduct) throws SQLException {
		// thuc hien theo buoc huong dan torng slide
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;

		String sqlString = "SELECT * FROM size_product WHERE idProduct='"+idProduct+"'";
		List<Integer> listSize = new ArrayList<Integer>();
		try {
			preparedStatement = connection.prepareStatement(sqlString);

			ResultSet resultset = preparedStatement.executeQuery();

			while (resultset.next())// tro den hang ke tiep
			{
				int id = resultset.getInt("id");
				int idProd = resultset.getInt("idProduct");
				int idSize = resultset.getInt("idSize");
				
				//String sizeString = ultil.Ultil.mapSize.get(idSize);
				
				listSize.add(idSize);
				

			}

			preparedStatement.close();
			resultset.close();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			connection.close();
		}
		return listSize;
	}
	
	public static List<Size> mapSize(List<Integer> listSizeProDuct) {// 2 3 4
		
		List<Size> lSize = new ArrayList<Size>();
		
		for (int i = 0; i < listSizeProDuct.size(); i++) {
			Size size = new Size();
			
			size.setId(listSizeProDuct.get(i));
			String sizeString = ultil.Ultil.mapSize.get(listSizeProDuct.get(i));
			size.setTitle(sizeString);
			
			
			lSize.add(size);
		}
		
		return lSize;

	}
	
	public static List<Color> getListColor(int idProduct) throws SQLException {
		List<Color> listColor = new ArrayList<Color>();
		
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;

		String sqlString = "SELECT * FROM color_product WHERE idProduct='"+idProduct+"'";
		List<Integer> listColorint = new ArrayList<Integer>();
		try {
			preparedStatement = connection.prepareStatement(sqlString);

			ResultSet resultset = preparedStatement.executeQuery();

			while (resultset.next())// tro den hang ke tiep
			{
				int id = resultset.getInt("id");
				int idProd = resultset.getInt("idProduct");
				int idColor = resultset.getInt("idColor");
				
				//String sizeString = ultil.Ultil.mapSize.get(idSize);
				
				listColorint.add(idColor);
				

			}
			
			
			for (int i = 0; i < listColorint.size(); i++) {
				Color color = new Color();
				
				color.setId(listColorint.get(i));
				String sizeString = ultil.Ultil.mapColor.get(listColorint.get(i));
				color.setTitle(sizeString);
				
				
				listColor.add(color);
			}
			
			

			preparedStatement.close();
			resultset.close();

		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			connection.close();
		}
		
		
		
		
		
		return listColor;
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
