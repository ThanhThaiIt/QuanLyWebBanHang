package ultil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;

public class Ultil {
public static void closeConnectionToDB(Connection connection, Statement statement, ResultSet resultSet) throws SQLException {
	connection.close();
	statement.close();
	resultSet.close();
}

public static final Map<Integer, String> mapCountry = new HashMap<Integer, String>(){{
	
	 put(1, "vn");
	 put(2, "kor");
	 put(3, "jp");
}};
}
