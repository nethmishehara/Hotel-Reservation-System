package Hotel;

public class Customer1 {
	
		private String email;
		private String date;
		private String date2;
		private String no;
		private String rtype;
		private String spreq;
		private String username;
		private String password;
		private String id;
		
		public Customer1(String email, String chekindate, String chekoutdate, String noofguests, String roomtype, String specialreq,
				String username,String password ,String id) {
			super();
			

			this.email = email;
			this.date = chekindate;
			this.date2 = chekoutdate;
			this.no = noofguests;
			this.rtype = roomtype;
			this.spreq = specialreq;
			this.username = username;
			this.password = password;
			this.id=id;
		}


		public String getEmail() {
			return email;
		}

		public String getDate() {
			return date;
		}

		public String getDate2() {
			return date2;
		}

		public String getNo() {
			return no;
		}

		public String getRtype() {
			return rtype;
		}

		public String getSpreq() {
			return spreq;
		}

		public String getUsername() {
			return username;
		}

		public String getPassword() {
			return password;
		}
		
		
		public String getId() {
			return id;
		}
		

		
		
	

		


		

}
