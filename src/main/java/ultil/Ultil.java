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

public static final Map<Integer, String> mapSize = new HashMap<Integer, String>() {{
	
	
	put(1, "S");
	put(2, "M");
	put(3, "L");
	put(4, "XL");
}};

public static final Map<Integer, String> mapColor = new HashMap<Integer, String>() {{
	
	
	put(1, "bg-light0");
	put(2, "bg-primary");
	put(3, "bg-dark");
	put(4, "bg-warning");
	put(4, "bg-light");
}};


public static int[] parstListStringToInterger(String[] lisStrings) {
	if (lisStrings == null) {
		return null;
	}
	int[] listInt = new int[lisStrings.length]; // Initialize listInt with appropriate length
    for (int i = 0; i < lisStrings.length; i++) {
        listInt[i] = Integer.parseInt(lisStrings[i]);
    }
    return listInt;
}

}
