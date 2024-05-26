package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Product;
import DB.DBConnection;

public class CategorySearchAdvanceDAO {
	public static List<Product> getFilterProduct(int[] brands, int[] colors,int [] sizes,int start, int count) throws SQLException {

		// thuc hien theo buoc huong dan torng slide
				Connection connection = DBConnection.Connection();
				PreparedStatement preparedStatement = null;

//				StringBuilder sqlString = new StringBuilder("SELECT DISTINCT product.id,product.idSubCategory,product.idSupplier,product.name,product.guarantee,product.price"
//						+ ",product.discount,product.quantity,product.video,product.description,product.idStatus,product.idType,product.create_at"
//						+ "  FROM product,size_product, supplier,color_product WHERE ");
				StringBuilder sqlString = new StringBuilder("SELECT DISTINCT product.id,product.idSubCategory,product.idSupplier,product.name,product.guarantee,product.price"
						+ ",product.discount,product.quantity,product.video,product.description,product.idStatus,product.idType,product.create_at"
						+ "  FROM product,size_product, supplier,color_product WHERE product.idStatus !=1 and ");
				
				if (brands != null && brands.length >0) {
					sqlString.append(" product.idSupplier = supplier.id and ( ");
					for (int i = 0; i < brands.length; i++) {
						String number = String.valueOf(brands[i]);
						sqlString.append(" supplier.id = ");
						sqlString.append(number);
						if (i < brands.length-1) {
							sqlString.append(" or ");
						}
					}
					sqlString.append(" ) ");
					if (colors !=null && colors.length >0 || sizes != null && sizes.length >0) {
						sqlString.append(" AND ");
					}
				}
				
				if (colors != null && colors.length >0) {
					sqlString.append(" product.id = color_product.idProduct and ( ");
					for (int i = 0; i < colors.length; i++) {
						String number = String.valueOf(colors[i]);
						sqlString.append(" color_product.idColor = ");
						sqlString.append(number);
						if (i < colors.length-1) {
							sqlString.append(" or ");
						}
					}
					sqlString.append(" ) ");
					if ( sizes != null && sizes.length >0) {
						sqlString.append(" AND ");
					}
				}
				
				
				
				if (sizes != null && sizes.length >0) {
					sqlString.append(" product.id = size_product.idProduct and ( ");
					for (int i = 0; i < sizes.length; i++) {
						String number = String.valueOf(sizes[i]);
						sqlString.append(" size_product.idSize = ");
						sqlString.append(number);
						if (i < sizes.length-1) {
							sqlString.append(" or ");
						}
					}
					sqlString.append(" ) ");
					
				}
				
				String aString = "limit "+(start)+", "+count+"";
				sqlString.append(aString);
				List<Product> list = new ArrayList<Product>();
				try {
					preparedStatement = connection.prepareStatement(sqlString.toString());

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
	
	
//	public static List<Product> getFilterProductByList(List<Integer> brands, List<Integer> colors,List<Integer> sizes,int start, int count) throws SQLException {
//
//		// thuc hien theo buoc huong dan torng slide
//				Connection connection = DBConnection.Connection();
//				PreparedStatement preparedStatement = null;
//
////				StringBuilder sqlString = new StringBuilder("SELECT DISTINCT product.id,product.idSubCategory,product.idSupplier,product.name,product.guarantee,product.price"
////						+ ",product.discount,product.quantity,product.video,product.description,product.idStatus,product.idType,product.create_at"
////						+ "  FROM product,size_product, supplier,color_product WHERE ");
//				StringBuilder sqlString = new StringBuilder("SELECT DISTINCT product.id,product.idSubCategory,product.idSupplier,product.name,product.guarantee,product.price"
//						+ ",product.discount,product.quantity,product.video,product.description,product.idStatus,product.idType,product.create_at"
//						+ "  FROM product,size_product, supplier,color_product WHERE product.idStatus !=1 and ");
//				
//				if (brands != null && brands.size() >0) {
//					sqlString.append(" product.idSupplier = supplier.id and ( ");
//					for (int i = 0; i < brands.size(); i++) {
//						String number = String.valueOf(brands[i]);
//						sqlString.append(" supplier.id = ");
//						sqlString.append(number);
//						if (i < brands.length-1) {
//							sqlString.append(" or ");
//						}
//					}
//					sqlString.append(" ) ");
//					if (colors !=null && colors.length >0 || sizes != null && sizes.length >0) {
//						sqlString.append(" AND ");
//					}
//				}
//				
//				if (colors != null && colors.length >0) {
//					sqlString.append(" product.id = color_product.idProduct and ( ");
//					for (int i = 0; i < colors.length; i++) {
//						String number = String.valueOf(colors[i]);
//						sqlString.append(" color_product.idColor = ");
//						sqlString.append(number);
//						if (i < colors.length-1) {
//							sqlString.append(" or ");
//						}
//					}
//					sqlString.append(" ) ");
//					if ( sizes != null && sizes.length >0) {
//						sqlString.append(" AND ");
//					}
//				}
//				
//				
//				
//				if (sizes != null && sizes.length >0) {
//					sqlString.append(" product.id = size_product.idProduct and ( ");
//					for (int i = 0; i < sizes.length; i++) {
//						String number = String.valueOf(sizes[i]);
//						sqlString.append(" size_product.idSize = ");
//						sqlString.append(number);
//						if (i < sizes.length-1) {
//							sqlString.append(" or ");
//						}
//					}
//					sqlString.append(" ) ");
//					
//				}
//				
//				String aString = "limit "+(start)+", "+count+"";
//				sqlString.append(aString);
//				List<Product> list = new ArrayList<Product>();
//				try {
//					preparedStatement = connection.prepareStatement(sqlString.toString());
//
//					ResultSet resultset = preparedStatement.executeQuery();
//
//					while (resultset.next())// tro den hang ke tiep
//					{
//						int id = resultset.getInt("id");
//						int idSubCategory = resultset.getInt("idSubCategory");
//						int idSupplier = resultset.getInt("idSupplier");
//						String nameString = resultset.getString("name");
//						int guarantee = resultset.getInt("guarantee");
//						float price = resultset.getFloat("price");
//						int discount = resultset.getInt("discount");
//						int quantity = resultset.getInt("quantity");
//						String video = resultset.getString("video");
//						String description = resultset.getString("description");
//						int idStatus = resultset.getInt("idStatus");
//						int idType = resultset.getInt("idType");
//						String create_at = resultset.getString("create_at");
//
//						Product product = new Product(id, idSubCategory, idSupplier, nameString, guarantee, price, discount,
//								quantity, video, description, idStatus, idType, create_at);
//						list.add(product);
//
//					}
//
//					preparedStatement.close();
//					resultset.close();
//
//				} catch (SQLException e) {
//
//					e.printStackTrace();
//				} finally {
//					connection.close();
//				}
//				return list;
//    }
	
	
	//dem bang do co bao nhieu hang
	public static int Countrow(int[] brands, int[] colors,int [] sizes)
	{
		Connection connection = DBConnection.Connection();
		int count = 0;
		//String checkWhere = "where";
		//String sql = "select count(*) from product where idStatus !=1";
		
		StringBuilder sqlString = new StringBuilder("SELECT count(*)"
				
				+ "  FROM product ");
		
		if (brands != null && brands.length >0) {
			sqlString.append(",supplier");
		}
		if (colors != null && colors.length >0 ) {
			sqlString.append(",color_product");
		}
		if (sizes != null && sizes.length >0) {
			sqlString.append(",size_product");
		}
		
		sqlString.append(" where product.idStatus !=1 and ");
		
		if (brands != null && brands.length >0) {
			sqlString.append(" product.idSupplier = supplier.id and ( ");

			for (int i = 0; i < brands.length; i++) {
				String number = String.valueOf(brands[i]);
				sqlString.append(" supplier.id = ");
				sqlString.append(number);
				if (i < brands.length-1) {
					sqlString.append(" or ");
				}
			}
			sqlString.append(" ) ");
			if (colors !=null && colors.length >0 || sizes != null && sizes.length >0) {
				sqlString.append(" AND ");
			}
		}
		
		if (colors != null && colors.length >0) {
			sqlString.append(" product.id = color_product.idProduct and ( ");
			for (int i = 0; i < colors.length; i++) {
				String number = String.valueOf(colors[i]);
				sqlString.append(" color_product.idColor = ");
				sqlString.append(number);
				if (i < colors.length-1) {
					sqlString.append(" or ");
				}
			}
			sqlString.append(" ) ");
			if ( sizes != null && sizes.length >0) {
				sqlString.append(" AND ");
			}
		}
		
		
		
		if (sizes != null && sizes.length >0) {
			sqlString.append(" product.id = size_product.idProduct and ( ");
			for (int i = 0; i < sizes.length; i++) {
				String number = String.valueOf(sizes[i]);
				sqlString.append(" size_product.idSize = ");
				sqlString.append(number);
				if (i < sizes.length-1) {
					sqlString.append(" or ");
				}
			}
			sqlString.append(" ) ");
			
		}
		try 
		{
			PreparedStatement ptmt = connection.prepareStatement(sqlString.toString());
			
			ResultSet rs = ptmt.executeQuery();
			
			rs.next();
			
			count = rs.getInt(1);
			
				
		} 
		catch (SQLException e) 
		{
			
			e.printStackTrace();
		}
		
		return count;
	}
	
	
	public static List<Product> getFilterProductBK(int[] brands, int[] colors,int [] sizes) throws SQLException {

		// thuc hien theo buoc huong dan torng slide
				Connection connection = DBConnection.Connection();
				PreparedStatement preparedStatement = null;

			StringBuilder sqlString = new StringBuilder("SELECT DISTINCT product.id,product.idSubCategory,product.idSupplier,product.name,product.guarantee,product.price"
						+ ",product.discount,product.quantity,product.video,product.description,product.idStatus,product.idType,product.create_at"
					+ "  FROM product,size_product, supplier,color_product WHERE ");
				
				
				if (brands != null && brands.length >0) {
					sqlString.append(" product.idSupplier = supplier.id and ( ");
					for (int i = 0; i < brands.length; i++) {
						String number = String.valueOf(brands[i]);
						sqlString.append(" supplier.id = ");
						sqlString.append(number);
						if (i < brands.length-1) {
							sqlString.append(" or ");
						}
					}
					sqlString.append(" ) ");
					if (colors !=null && colors.length >0 || sizes != null && sizes.length >0) {
						sqlString.append(" AND ");
					}
				}
				
				if (colors != null && colors.length >0) {
					sqlString.append(" product.id = color_product.idProduct and ( ");
					for (int i = 0; i < colors.length; i++) {
						String number = String.valueOf(colors[i]);
						sqlString.append(" color_product.idColor = ");
						sqlString.append(number);
						if (i < colors.length-1) {
							sqlString.append(" or ");
						}
					}
					sqlString.append(" ) ");
					if ( sizes != null && sizes.length >0) {
						sqlString.append(" AND ");
					}
				}
				
				
				
				if (sizes != null && sizes.length >0) {
					sqlString.append(" product.id = size_product.idProduct and ( ");
					for (int i = 0; i < sizes.length; i++) {
						String number = String.valueOf(sizes[i]);
						sqlString.append(" size_product.idSize = ");
						sqlString.append(number);
						if (i < sizes.length-1) {
							sqlString.append(" or ");
						}
					}
					sqlString.append(" ) ");
					
				}
				
				List<Product> list = new ArrayList<Product>();
				try {
					preparedStatement = connection.prepareStatement(sqlString.toString());

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
}
