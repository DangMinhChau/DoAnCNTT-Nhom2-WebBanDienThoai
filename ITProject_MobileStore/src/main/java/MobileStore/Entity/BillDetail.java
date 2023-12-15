package MobileStore.Entity;

public class BillDetail {

	private long id; 
	private long id_product; 
	private long id_bills;
	private int quanty; 
	private double total;
    private String name_product; 
    
	public BillDetail() {
		super();
	}
	public BillDetail(long id, long id_product, int quanty, double total, long id_bills, String name_product) {
		super();
		this.id = id;
		this.id_product = id_product;
		this.quanty = quanty;
		this.total = total;
		this.id_bills = id_bills; 
		this.name_product = name_product; 
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getId_product() {
		return id_product;
	}
	public void setId_product(long id_product) {
		this.id_product = id_product;
	}
	public int getQuanty() {
		return quanty;
	}
	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public long getId_bills() {
		return id_bills;
	}
	public void setId_bills(long id_bills) {
		this.id_bills = id_bills;
	}
	public String getName_product() {
		return name_product;
	}
	public void setName_product(String name_product) {
		this.name_product = name_product;
	} 
	
}
