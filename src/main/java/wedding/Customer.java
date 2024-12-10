package wedding;

public class Customer {

	private String id;
	private String username;
	private String reserveName;
	private String venue;
	private String date;
	private String participants;
	private String event;
	private String start;
	private String end;
	
	
	public Customer(String id, String username, String reserveName, String venue, String date, String participants,String event, String start, String end) {
		super();
		this.id = id;
		this.username = username;
		this.reserveName = reserveName;
		this.venue = venue;
		this.date = date;
		this.participants = participants;
		this.event = event;
		this.start = start;
		this.end = end;
	}


	public String getId() {
		return id;
	}


	public String getUsername() {
		return username;
	}


	public String getReserveName() {
		return reserveName;
	}


	public String getVenue() {
		return venue;
	}


	public String getDate() {
		return date;
	}


	public String getParticipants() {
		return participants;
	}


	public String getEvent() {
		return event;
	}


	public String getStart() {
		return start;
	}


	public String getEnd() {
		return end;
	}



	
}

