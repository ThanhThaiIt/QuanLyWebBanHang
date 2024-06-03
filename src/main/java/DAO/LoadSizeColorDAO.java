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

public class LoadSizeColorDAO {
	public static List<Size> getSize() throws SQLException {
		// thuc hien theo buoc huong dan torng slide
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;

		String sqlString = "SELECT * FROM size";
		List<Size> listSize = new ArrayList<Size>();
		try {
			preparedStatement = connection.prepareStatement(sqlString);

			ResultSet resultset = preparedStatement.executeQuery();

			while (resultset.next())// tro den hang ke tiep
			{
				int id = resultset.getInt("id");
				String title = resultset.getString("title");
				

				Size size = new Size(id, title);
						
				listSize.add(size);

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
	public static List<Color> getColor() throws SQLException {
		// thuc hien theo buoc huong dan torng slide
		Connection connection = DBConnection.Connection();
		PreparedStatement preparedStatement = null;

		String sqlString = "SELECT * FROM color";
		List<Color> listColor = new ArrayList<Color>();
		try {
			preparedStatement = connection.prepareStatement(sqlString);

			ResultSet resultset = preparedStatement.executeQuery();

			while (resultset.next())// tro den hang ke tiep
			{
				int id = resultset.getInt("id");
				String title = resultset.getString("title");
				String value = resultset.getString("value");
				

				Color color = new  Color(id, title, value);
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
}
