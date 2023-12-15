package MobileStore.Entity;

public class Bills {
	private long id; 
	private String email; 
	private String phone; 
	private String display_name; 
	private String address; 
	private double total; 
	private int quanty; 
	private String note;
	private String payments;

	public Bills(long id, String email, String phone, String display_name, String address,
			double total, String note, String payments, int quanty) {
		super();
		this.id = id;
		this.email = email;
		this.phone = phone;
		this.display_name = display_name;
		this.address = address;
		this.total = total;
		this.note = note;
		this.payments = payments;
		this.quanty = quanty;
	}
	
	public Bills() {
		super();
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDisplay_name() {
		return display_name;
	}
	public void setDisplay_name(String display_name) {
		this.display_name = display_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(Double total) {
		this.total = total;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public String getPayments() {
		return payments;
	}
	public void setPayments(String payments) {
		this.payments = payments;
	}
	public int getQuanty() {
		return quanty;
	}
	public void setQuanty(int quanty) {
		this.quanty = quanty;
	} 
}
