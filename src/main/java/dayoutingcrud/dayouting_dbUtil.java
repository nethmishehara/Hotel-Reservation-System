package dayoutingcrud;

import java.util.List;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;

//method of the insert
public class dayouting_dbUtil {
     public static boolean insertData(String name , String address , String contactnumber , String  date , String time , String NoOfGuests , String event) {
		boolean isSuccess = false;
		//create database connection
		
		String url = "jdbc:mysql://localhost:3306/accomonow";
    	String user = "root" ;
    	String pass = "Pasan@2003";
    	
    	try {
    		   Class.forName("com.mysql.jdbc.Driver");
    		   Connection con = DriverManager.getConnection(url,user,pass);
    		        Statement stmt = con.createStatement();
    		        String sql = "insert into dayouting values('"+name+"','"+address+"','"+contactnumber+"','"+date+"','"+time+"','"+NoOfGuests+"','"+event+"',0)";
    		        
    		        int results = stmt.executeUpdate(sql);
    		        
    		        if(results > 0) {
    		        	isSuccess = true;
    		        }
    	}
    	
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    
 
  } 
     
     //method of the read
     
     public static List<Customer> getCustomerDetails(String username){
    		ArrayList<Customer> customers = new ArrayList<>();
    		
    		String url = "jdbc:mysql://localhost:3306/accomonow";
        	String user = "root" ;
        	String pass = "Pasan@2003";
    		try {
    			Class.forName("com.mysql.jdbc.Driver");
    			Connection con = DriverManager.getConnection(url, user, pass);
    			Statement stmt = con.createStatement();
    			String sql = "select * from dayouting where name = '"+username+"'";
    	        ResultSet rs = stmt.executeQuery(sql);
    	        
    	        while(rs.next()) {
    	        	String name = rs.getString(1);
    	        	String address = rs.getString(2);
    	        	String contact = rs.getString(3);
    	        	String date = rs.getString(4);
    	        	String time = rs.getString(5);
    	        	String guest = rs.getString(6);
    	        	String event = rs.getString(7);
    	        	String id = rs.getString(8);
    	        	
    	        	Customer customer = new Customer(name, address, contact, date,time,guest,event,id);
    	        	customers.add(customer);
    	        }

    		}
    		catch(Exception e) {
    			e.printStackTrace();
    		}
			return customers;
     }	
     
     //method of update
     public static boolean updateData(String name, String address, String contact, String date, String time, String guest, String event) {
    		boolean success = false;
    		
    		
    		
    		String url = "jdbc:mysql://localhost:3306/accomonow";
        	String user = "root" ;
        	String pass = "Pasan@2003";
    		
    		try {
    			
    			Class.forName("com.mysql.jdbc.Driver");
    			Connection con = DriverManager.getConnection(url, user, pass);
    			Statement stmt = con.createStatement();
    			String sql = "update dayouting set name= '"+name+"', address= '"+address+"', contactnumber= '"+contact+"', date= '"+date+"', time= '"+time+"', NoOfGuests= '"+guest+"', event= '"+event+"' where name= '"+name+"'";
    			
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
public static boolean deleteData(String username) {
	
	boolean isSuccess = false;
	
	//create database connection
	
	String url = "jdbc:mysql://localhost:3306/accomonow";
	String user = "root" ;
	String pass = "Pasan@2003";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, pass);
		Statement stmt = con.createStatement();
		String sql = "delete from dayouting where name= '"+username+"'";
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




