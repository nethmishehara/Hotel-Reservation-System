package wedding;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class wedding {



	
public static boolean  addData(String username, String name, String venue, String date, String participants, String event, String start_time, String end_time) {
	boolean isSuccess = false;		
	//create database connection
	
	String url = "jdbc:mysql://localhost:3306/accomonow";
	String user = "root";
	String pass = "Pasan@2003";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);
		Statement stmt = con.createStatement();
		String sql = "insert into reservation values (0, '"+username+"', '"+name+"', '"+venue+"', '"+date+"', '"+participants+"', '"+event+"', '"+start_time+"', '"+end_time+"')";
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







public static List<Customer> getCustomerDetails(String username){
	ArrayList<Customer> customers = new ArrayList<>();
	
	String url = "jdbc:mysql://localhost:3306/accomonow?useSSL=false";
	String user = "root";
	String pass = "Pasan@2003";
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);
		Statement stmt = con.createStatement();
		String sql = "select * from reservation where username = '"+username+"'";
        ResultSet rs = stmt.executeQuery(sql);
        
        while(rs.next()) {
        	String id = rs.getString(1);
        	String userName = rs.getString(2);
        	String name = rs.getString(3);
        	String venue = rs.getString(4);
        	String date = rs.getString(5);
        	String participants = rs.getString(6);
        	String event = rs.getString(7);
        	String start_time = rs.getString(8);
        	String end_time = rs.getString(9);
        	
        	Customer customer = new Customer(id, userName, name, venue, date, participants, event, start_time, end_time);
        	customers.add(customer);
        }
		
	}
	
	catch(Exception e){
		e.printStackTrace();
	}
	return customers;
}










public static boolean updateData(String showNo, String username, String name, String venue, String date, String participants, String event, String start_time, String end_time) {
	boolean success = false;
	
	int convId = Integer.parseInt(showNo);
	
	
	String url = "jdbc:mysql://localhost:3306/accomonow?useSSL=false";
	String user = "root";
	String pass = "Pasan@2003";
	
	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);
		Statement stmt = con.createStatement();
		String sql = "update reservation set name= '"+name+"', venue= '"+venue+"', date= '"+date+"', participants= '"+participants+"', event= '"+event+"', start_time= '"+start_time+"', end_time= '"+end_time+"' where reservation_no= '"+convId+"'";
		
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













public static boolean deleteData(String id) {
	
	int no = Integer.parseInt(id);
	boolean isSuccess = false;
	
	//create database connection
	
	String url = "jdbc:mysql://localhost:3306/accomonow?useSSL=false";
	String user = "root";
	String pass = "Pasan@2003";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);
		Statement stmt = con.createStatement();
		String sql = "delete from reservation where reservation_no='"+no+"'";
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

}
