package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Product;
import DB.DBConnection;

public class ProductCategoryDAO {
	public static List<Product> getAllProuct() throws SQLException {
		// thuc hien theo buoc huong dan torng slide
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;

		String sqlString = "SELECT * FROM product p join images i on p.id = i.idProduct where p.idStatus=3";
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
				int idImage = resultset.getInt("idIMG");
				String nameImg = resultset.getString("nameImg");
				String urlImg1 = resultset.getString("url");
				String urlImg2 = resultset.getString("url1");
				String sumDes = getFirstSixWords(description);
				Product product = new Product(id, idSubCategory, idSupplier, nameString, guarantee, price, discount,
						quantity, video, description, idStatus, idType, create_at, idImage, nameImg, urlImg1, urlImg2,sumDes);
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
	public static String getFirstSixWords(String sentence) {
        // Tách câu thành các từ bằng cách sử dụng dấu cách làm delimiter
        String[] words = sentence.split(" ");
        
        // Kiểm tra xem số từ có ít hơn 6 không
        if (words.length < 6) {
            // Nếu ít hơn 6 từ, trả về toàn bộ câu
            return sentence;
        }
        
        // Ghép lại 6 từ đầu tiên
        StringBuilder firstSixWords = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            firstSixWords.append(words[i]);
            // Thêm dấu cách giữa các từ
            if (i < 5) {
                firstSixWords.append(" ");
            }
        }
        
        // Trả về kết quả
        return firstSixWords.toString();
    }
	
	
//	public static  Product getProductByID(int ids) throws SQLException {
//		Connection connection = DBConnection.Connection();
//		PreparedStatement preparedStatement = null;
//
//		String sqlString = "SELECT * FROM product WHERE id ='" + ids + "'";
//		Product product= null;
//		try {
//			preparedStatement = connection.prepareStatement(sqlString);
//
//			ResultSet resultset = preparedStatement.executeQuery();
//
//			while (resultset.next())// tro den hang ke tiep
//			{
//				int id = resultset.getInt("id");
//				int idSubCategory = resultset.getInt("idSubCategory");
//				int idSupplier = resultset.getInt("idSupplier");
//				String nameString = resultset.getString("name");
//				int guarantee = resultset.getInt("guarantee");
//				float price = resultset.getFloat("price");
//				int discount = resultset.getInt("discount");
//				int quantity = resultset.getInt("quantity");
//				String video = resultset.getString("video");
//				String description = resultset.getString("description");
//				int idStatus = resultset.getInt("idStatus");
//				int idType = resultset.getInt("idType");
//				String create_at = resultset.getString("create_at");
//				int idImage = resultset.getInt("idIMG");
//				String nameImg = resultset.getString("nameImg");
//				String urlImg1 = resultset.getString("url");
//				String urlImg2 = resultset.getString("url1");
//				String sumDes = getFirstSixWords(description);
//				 product = new Product(id, idSubCategory, idSupplier, nameString, guarantee, price, discount,
//						quantity, video, description, idStatus, idType, create_at, idImage, nameImg, urlImg1, urlImg2,sumDes);
//				
//
//			}
//
//			preparedStatement.close();
//			resultset.close();
//
//		} catch (SQLException e) {
//
//			e.printStackTrace();
//		} finally {
//			connection.close();
//		}
//		return product;
//	}
	
	public static Product getProductByID(int ids) throws SQLException {
	    Connection connection = DBConnection.Connection();
	    PreparedStatement preparedStatement = null;
	    ResultSet resultset = null;
	    Product product = null;

	    String sqlString = "SELECT * FROM product p join images i on p.id = i.idProduct WHERE id = ?";
	    try {
	        preparedStatement = connection.prepareStatement(sqlString);
	        preparedStatement.setInt(1, ids);

	        resultset = preparedStatement.executeQuery();

	        if (resultset.next()) {
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
	            int idImage = resultset.getInt("idIMG");
	            String nameImg = resultset.getString("nameImg");
	            String urlImg1 = resultset.getString("url");
	            String urlImg2 = resultset.getString("url1");
	            String sumDes = getFirstSixWords(description);

	            product = new Product(id, idSubCategory, idSupplier, nameString, guarantee, price, discount, quantity, video, description, idStatus, idType, create_at, idImage, nameImg, urlImg1, urlImg2, sumDes);
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        // Handle the exception or throw it to the calling method
	    } finally {
	        if (resultset != null) {
	            try {
	                resultset.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        if (preparedStatement != null) {
	            try {
	                preparedStatement.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	        if (connection != null) {
	            try {
	                connection.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }
	    return product;
	}
	
	public static void updateProduct(Product product) throws SQLException {
	    Connection connection = DBConnection.Connection();
	    PreparedStatement preparedStatement = null;

	    String sqlString = "UPDATE product SET name = ?, guarantee = ?, price = ?, discount = ?, quantity = ?, video = ?, description = ? WHERE id = ?";

	    try {
	        preparedStatement = connection.prepareStatement(sqlString);

	        preparedStatement.setString(1, product.getName());
	        preparedStatement.setInt(2, product.getGuarantee());
	        preparedStatement.setFloat(3, product.getPrice());
	        preparedStatement.setInt(4, product.getDiscount());
	        preparedStatement.setInt(5, product.getQuantity());
	        preparedStatement.setString(6, product.getVideo());
	        preparedStatement.setString(7, product.getDescription());
	        preparedStatement.setInt(8, product.getId());  // Assuming product has a getId() method

	        preparedStatement.executeUpdate();
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	        throw new SQLException("Failed to update product", e);
	    } finally {
	        if (preparedStatement != null) {
	            preparedStatement.close();
	        }
	        if (connection != null) {
	            connection.close();
	        }
	    }
	}
	
	public static void deleteProduct(int id) throws SQLException {
	    Connection connection = DBConnection.Connection();
	    PreparedStatement preparedStatement = null;

	    String sqlString = "UPDATE product SET idStatus = ? WHERE id = ?";

	    try {
	        preparedStatement = connection.prepareStatement(sqlString);

	        preparedStatement.setInt(1, 1);
	        
	        preparedStatement.setInt(2, id);  // Assuming product has a getId() method

	        preparedStatement.executeUpdate();
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	        throw new SQLException("Failed to update product", e);
	    } finally {
	        if (preparedStatement != null) {
	            preparedStatement.close();
	        }
	        if (connection != null) {
	            connection.close();
	        }
	    }
	}
	



}
