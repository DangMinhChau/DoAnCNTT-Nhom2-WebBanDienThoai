package MobileStore.DTO;

public class ShopCartDto {
	
	private int quanty;
	private double totalPrice; 
	private ProductDto product;

	public ShopCartDto() {
		super();
	}
	public ShopCartDto(int quanty, double totalPrice, ProductDto product) {
		super();
		this.quanty = quanty;
		this.totalPrice = totalPrice;
		this.product = product;
	}
	public int getQuanty() {
		return quanty;
	}
	public void setQuanty(int quanty) {
		this.quanty = quanty;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public ProductDto getProduct() {
		return product;
	}
	public void setProduct(ProductDto product) {
		this.product = product;
	} 
}
