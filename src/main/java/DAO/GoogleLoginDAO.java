package DAO;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import java.io.PrintWriter;

import org.apache.http.client.ClientProtocolException;

import org.apache.http.client.fluent.Form;
import org.apache.http.client.fluent.Request;

import BEAN.Constants;
import BEAN.UserGoogle;

public class GoogleLoginDAO {
	

	public static String getToken(String code) throws ClientProtocolException, IOException {
		// call api to get token
		String response = Request.Post(Constants.GOOGLE_LINK_GET_TOKEN)
				.bodyForm(Form.form().add("client_id", Constants.GOOGLE_CLIENT_ID)
						.add("client_secret", Constants.GOOGLE_CLIENT_SECRET)
						.add("redirect_uri", Constants.GOOGLE_REDIRECT_URI).add("code", code)
						.add("grant_type", Constants.GOOGLE_GRANT_TYPE).build())
				.execute().returnContent().asString();

		JsonObject jobj = new Gson().fromJson(response, JsonObject.class);
		String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");
		return accessToken;
	}

	public static UserGoogle getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
		String link = Constants.GOOGLE_LINK_GET_USER_INFO + accessToken;
		String response = Request.Get(link).execute().returnContent().asString();

		UserGoogle googlePojo = new Gson().fromJson(response, UserGoogle.class);

		return googlePojo;
	}
	
	
	 public static String extractName(String input) {
	        // Sử dụng regex để tìm giá trị của `name`
	        String regex = "name=([^,]+)";
	        java.util.regex.Pattern pattern = java.util.regex.Pattern.compile(regex);
	        java.util.regex.Matcher matcher = pattern.matcher(input);

	        if (matcher.find()) {
	            return matcher.group(1).trim();
	        }
	        
	        return null; // Trả về null nếu không tìm thấy `name`
	    }
}
