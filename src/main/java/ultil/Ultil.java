package ultil;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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


public static String convertIntArrayToString(int[] array) {
    // Sử dụng StringBuilder để xây dựng chuỗi
    StringBuilder sb = new StringBuilder();
    
    // Duyệt qua từng phần tử trong mảng
    for (int i = 0; i < array.length; i++) {
        // Thêm phần tử vào StringBuilder
        sb.append(array[i]);
        
        // Nếu không phải là phần tử cuối cùng, thêm dấu phân cách
        if (i < array.length - 1) {
            sb.append(", ");
        }
    }
    
    // Chuyển đổi StringBuilder thành chuỗi và trả về
    return sb.toString();
}

public static List<Integer> convertStringToIntList(String input) {
    // Tách chuỗi bằng dấu phẩy và khoảng trắng
    String[] strArray = input.split(",");
    List<Integer> intList = new ArrayList<>();
    
    // Duyệt qua các phần tử và chuyển đổi từng phần tử thành số nguyên
    for (String str : strArray) {
        // Cắt bỏ khoảng trắng và chuyển đổi thành số nguyên
        int number = Integer.parseInt(str.trim());
        intList.add(number);
    }
    
    return intList;
}
public static int[] convertStringToIntArray(String input) {
    // Kiểm tra đầu vào null và trả về null nếu đầu vào là null
    if (input.equalsIgnoreCase(" ")) {
        return null;
    }

    // Tách chuỗi bằng dấu phẩy và khoảng trắng
    String[] strArray = input.split(",");
    int[] intArray = new int[strArray.length];
    
    // Duyệt qua các phần tử và chuyển đổi từng phần tử thành số nguyên
    for (int i = 0; i < strArray.length; i++) {
        // Cắt bỏ khoảng trắng và chuyển đổi thành số nguyên
        int number = Integer.parseInt(strArray[i].trim());
        intArray[i] = number;
    }
    
    return intArray;
}
}
