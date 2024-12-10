package Hotel;


import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class reservation {
	//method of insert
	public static boolean insertData(String email, String date, String date2, String no,String rtype,String spreq ,String username, String password) {
		boolean isSuccess = false;		
		//create database connection
		
		String url = "jdbc:mysql://localhost:3306/accomonow";
		String user = "root";
		String pass = "Pasan@2003";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "insert into room values ('"+email+"', '"+date+"', '"+date2+"', '"+no+"','"+rtype+"','"+spreq+"', '"+username+"', '"+password+"', 0)";
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
	//method of the read
	public static List<Customer1> getCustomerDetails(String Email)
	{
		ArrayList<Customer1> customers = new ArrayList<>();
		
		String url = "jdbc:mysql://localhost:3306/accomonow";
		String user = "root";
		String pass = "Pasan@2003";
				
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "select * from room where email = '"+Email+"'";
	        ResultSet rs = stmt.executeQuery(sql);
	        
	        while(rs.next()) {
	        	
	        	String email = rs.getString(1);
	        	String date = rs.getString(2);
	        	String date2 = rs.getString(3);
	        	String no = rs.getString(4);
	        	String rtype = rs.getString(5);
	        	String spreq = rs.getString(6);
	        	String username = rs.getString(7);
	        	String password = rs.getString(8);
	        	String id = rs.getString(9);
	        	
	        	Customer1 customer = new Customer1(email, date, date2, no, rtype, spreq, username, password,id);
	        	customers.add(customer);
	        }
			
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		return customers;
	}



	
	//method of update
	public static boolean updateData(String s_email, String s_date, String s_date2, String s_no, String s_rtype, String s_spreq,String s_username,String s_password ) {
		boolean success = false;
		
		//int convId = Integer.parseInt(email);
		
		
		String url = "jdbc:mysql://localhost:3306/accomonow";
		String user = "root";
		String pass = "Pasan@2003";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "update room set chekindate= '"+s_date+"', checkoutdate= '"+s_date2+"', noofguests= '"+s_no+"', roomtype= '"+s_rtype+"', specialreq= '"+s_spreq+"', username= '"+s_username+"',password= '"+s_password+"' where email= '"+s_email+"'";
			
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
	
	
	
	
	
	


//method of delete
public static boolean reservationDelete(String email) {
	
	//int no = Integer.parseInt(id);
	boolean isSuccess = false;
	
	//create database connection
	 
	String url = "jdbc:mysql://localhost:3306/accomonow";
	String user = "root";
	String pass = "Pasan@2003";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);
		Statement stmt = con.createStatement();
		String sql = "delete from room where email = '"+email+"'";
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









public static boolean login(String username, String password)
{
	boolean isSuccess = false;
	
	 
	String url = "jdbc:mysql://localhost:3306/accomonow";
	String user = "root";
	String pass = "Pasan@2003";
	
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);
		Statement stmt = con.createStatement();
		String sql = "select * from signup where username = '"+username+"' and password = '"+password+"'";
		ResultSet results = stmt.executeQuery(sql);
		
		if(results.next()){
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






}
  