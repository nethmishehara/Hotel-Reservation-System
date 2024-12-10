package feedcak;

import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class Feedback {
	
	public static boolean addData(String Username,String Email,String Subject,String AdditionalDetail ){
		
		boolean isSuccess = false;		
		//create database connection
		
		String url = "jdbc:mysql://localhost:3306/accomonow";
		String user = "root";
		String pass = "Pasan@2003";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "insert into feedback values (0, '"+Username+"', '"+Email+"', '"+Subject+"', '"+AdditionalDetail+"')";
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
	
	
	
	/*read*/
	
	public static List<customer4> getCustomerDetails(String eMail){
		ArrayList<customer4> customers = new ArrayList<>();
		
		String url = "jdbc:mysql://localhost:3306/accomonow?useSSL=false";
		String user = "root";
		String pass = "Pasan@2003";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "select * from feedback where email= '"+eMail+"'";
	        ResultSet rs = stmt.executeQuery(sql);
	        
	        while(rs.next()) {
	        	String id = rs.getString(1);
	        	String username = rs.getString(2);
	        	String email = rs.getString(3);
	        	String subject = rs.getString(4);
	        	String additionalDetail = rs.getString(5);
	        	
	        	
	        	customer4 customer = new customer4(id, username, email, subject, additionalDetail);
	        	customers.add(customer);
	        }
			
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		return customers;
	}






/*delete*/

public static boolean deleteFeedback(String email) {
	
	boolean isSuccess = false;
	
	//create database connection
	
	String url = "jdbc:mysql://localhost:3306/accomonow?useSSL=false";
	String user = "root";
	String pass = "Pasan@2003";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);
		Statement stmt = con.createStatement();
		String sql = "delete from feedback where email ='"+email+"'";
		int results = stmt.executeUpdate(sql);
		
		if(results > 0 ) {
            isSuccess = true;
        }
		
		else {
			isSuccess = false;
		}
		
		
	}
	
	catch(Exception e) {
		e.printStackTrace();
	}
	
	
	return isSuccess;
}





/*update*/

public static boolean updateData(String username, String email, String subject, String additionalDetail) {
	boolean success = false;
	
	
	
	String url = "jdbc:mysql://localhost:3306/accomonow?useSSL=false";
	String user = "root";
	String pass = "Pasan@2003";
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);
		Statement stmt = con.createStatement();
		String sql = "update feedback set name= '"+username+"', subject= '"+subject+"', details= '"+additionalDetail+"' where email = '"+email+"'";
		
		int rs = stmt.executeUpdate(sql);
		
		if (rs > 0) {
			success = true;
		}
		
		else {
			success = false;
		}
		
		
	}
	
	catch (Exception e) {
		e.printStackTrace();
	}
	
	
	return success;
	
	
}
}

