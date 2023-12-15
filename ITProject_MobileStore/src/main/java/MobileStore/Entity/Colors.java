package MobileStore.Entity;

public class Colors {
	private long id_product ; 
	private String name; 
	private String img;

	public Colors() {
		super();
	}
	public Colors(long id_product, String name, String img) {
		super();
		this.id_product = id_product;
		this.name = name;
		this.img = img;
	}
	public long getId_product() {
		return id_product;
	}
	public void setId_product(long id_product) {
		this.id_product = id_product;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	} 	
}
