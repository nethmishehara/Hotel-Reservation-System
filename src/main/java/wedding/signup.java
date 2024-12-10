package wedding;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public class signup {
	
	public static boolean insertData(String name, String address, String email, String contactNo, String username, String password, String cfm_password) {
		boolean isSuccess = false;		
		//create database connection
		
		String url = "jdbc:mysql://localhost:3306/accomonow";
		String user = "root";
		String pass = "Pasan@2003";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "insert into signup values (0, '"+name+"', '"+address+"', '"+email+"', '"+contactNo+"', '"+username+"', '"+password+"', '"+cfm_password+"')";
			int results = stmt.executeUpdate(sql);
			
			if(results > 0 ) {
				isSuccess = true;
			}
			
			
		}
		
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;

	}
}
