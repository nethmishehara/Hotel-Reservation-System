package dayoutingcrud;

public class Customer {
	
	
	private String name;
	private String address;
	private String contact;
	private String date;
	private String time;
	private String guest;
	private String event;
	private String id;
	
	
	public Customer(String name, String address, String contact, String date, String time, String guest, String event,
			String id) {
		
		this.name = name;
		this.address = address;
		this.contact = contact;
		this.date = date;
		this.time = time;
		this.guest = guest;
		this.event = event;
		this.id = id;
	}
	
	
	public String getName() {
		return name;
	}
	public String getAddress() {
		return address;
	}
	public String getContact() {
		return contact;
	}
	public String getDate() {
		return date;
	}
	public String getTime() {
		return time;
	}
	public String getGuest() {
		return guest;
	}
	public String getEvent() {
		return event;
	}
	public String getId() {
		return id;
	}

	
	
	
	

}
