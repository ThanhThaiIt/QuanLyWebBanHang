package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import BEAN.Cart;
import BEAN.Product;
import BEAN.Transaction;
import DB.DBConnection;

public class CrudAdminProductDAO {
	public static void InserProduct(Product product, int[] lColor, int[] lSize, List<String> lImage) //dangkydangnhapdungtruefalse
	{// thuc hien theo buoc huong dan torng slide
		int key =0;
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;
		
		String sqlString = "insert into product(idSubCategory,idSupplier,name,guarantee,price,discount,quantity,video,description,idStatus,idType,create_at) values (?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try {
			// get generate key(id của transaction)
			preparedStatement = connection.prepareStatement(sqlString,PreparedStatement.RETURN_GENERATED_KEYS);
			
			
			 
			
			preparedStatement.setInt(1, product.getIdSubCategory());
			preparedStatement.setInt(2, product.getIdSupplier());
			preparedStatement.setString(3, product.getName());
			preparedStatement.setInt(4, product.getGuarantee());
			preparedStatement.setFloat(5, product.getPrice());
			preparedStatement.setInt(6, product.getDiscount());
			preparedStatement.setInt(7, product.getQuantity());
			preparedStatement.setString(8, product.getVideo());
			preparedStatement.setString(9, product.getDescription());
			preparedStatement.setInt(10, product.getIdStatus());
			preparedStatement.setInt(11, product.getIdType());
			preparedStatement.setString(12, product.getCreate_at());
			
			preparedStatement.executeUpdate();
			
			//+ key(IdTransaction)
			ResultSet rs = preparedStatement.getGeneratedKeys();

			if (rs.next()) {
			    key = rs.getInt(1);
			}//+
			
			InsertImage(key,lImage);
			InsertSize(key, lSize);
			InsertColor(key, lColor);
			
			
			
			
			preparedStatement.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	}
	
	public static void InsertImage(int keyy, List<String> lImage) //dangkydangnhapdungtruefalse
	{// thuc hien theo buoc huong dan torng slide
		
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;
		
		String sqlString = "insert into images(idProduct,nameImg,url,url1,url2,url3) values (?,?,?,?,?,?)";
		
		try {
			// get generate key(id của transaction)
			preparedStatement = connection.prepareStatement(sqlString,PreparedStatement.RETURN_GENERATED_KEYS);
			
			
			 
			
			preparedStatement.setInt(1, keyy);
			preparedStatement.setString(2, "b");
			
			for (int i = 1; i <= lImage.size(); i++) {
				preparedStatement.setString(i+2, lImage.get(i-1));
			}
			
			
			
			preparedStatement.executeUpdate();
			
			
			
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	}
	
	public static void InsertSize(int keyy, int[] lSizee) //dangkydangnhapdungtruefalse
	{// thuc hien theo buoc huong dan torng slide
		
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;
		
		String sqlString = "insert into size_product(idProduct,idSize) values (?,?)";
		
		try {
			// get generate key(id của transaction)
			preparedStatement = connection.prepareStatement(sqlString,PreparedStatement.RETURN_GENERATED_KEYS);
			
			
			 for (int i = 0; i < lSizee.length; i++) {
				
			
			
			preparedStatement.setInt(1, keyy);
			preparedStatement.setInt(2, lSizee[i]);
			
			
			preparedStatement.executeUpdate();
			 }
			
			
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	}
	
	
	public static void InsertColor(int keyy, int[] colorr) //dangkydangnhapdungtruefalse
	{// thuc hien theo buoc huong dan torng slide
		
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;
		
		String sqlString = "insert into color_product(idProduct,idColor) values (?,?)";
		
		try {
			// get generate key(id của transaction)
			preparedStatement = connection.prepareStatement(sqlString,PreparedStatement.RETURN_GENERATED_KEYS);
			
			
			 for (int i = 0; i < colorr.length; i++) {
				
			
			
			
			preparedStatement.setInt(1, keyy);
			preparedStatement.setInt(2, colorr[i]);
			
			
			preparedStatement.executeUpdate();
			
			
			 }
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	}
	
	
	
}
