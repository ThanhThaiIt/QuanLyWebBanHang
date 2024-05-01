package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import BEAN.Banner;
import BEAN.Product;
import DB.DBConnection;

public class BannerDAO {
	public static List<String> getBanner() throws SQLException {
		// thuc hien theo buoc huong dan torng slide
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;

		String sqlString = "SELECT linkSlide FROM slidebanner";
		List<String> list = new ArrayList<String>();
		try {
			preparedStatement = connection.prepareStatement(sqlString);

			ResultSet resultset = preparedStatement.executeQuery();

			while (resultset.next())// tro den hang ke tiep
			{
				 
				 
				String link = resultset.getString("linkSlide");
				 
				
				 
				list.add(link);

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
