package MobileStore.Dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import MobileStore.DTO.ProductDto;
import MobileStore.DTO.ShopCartDto;

@Repository
public class ShopCartDao extends BaseDao {

	@Autowired
	public ProductsDao productsDao = new ProductsDao(); 
	// Add cart 
	public HashMap<Long, ShopCartDto> AddCart(long id, HashMap<Long, ShopCartDto> cart) {
		ShopCartDto itemCart = new ShopCartDto(); 
		ProductDto productDto = productsDao.FindProductById((int)id); 
		if(productDto != null && cart.containsKey(id)) {
			itemCart = cart.get(id); 
			itemCart.setQuanty(itemCart.getQuanty() + 1);
			itemCart.setTotalPrice(itemCart.getQuanty() * itemCart.getProduct().getPrice());
		}
		else {
			itemCart.setProduct(productDto);
			itemCart.setQuanty(1);
			itemCart.setTotalPrice(productDto.getPrice());
		} 
		cart.put(id, itemCart);
		return cart; 
	}

	// Edit Cart 
	public HashMap<Long, ShopCartDto> EditCart(long id, int quanty, HashMap<Long, ShopCartDto> cart) {
		ShopCartDto itemCart = new ShopCartDto(); 
		// Check cart has been item
		if(cart == null) {
			return cart; 
		}
		// Check product by id has been on ShopCart 
		if(cart.containsKey(id)) {
			itemCart = cart.get(id); 
			itemCart.setQuanty(quanty);  // Set quanty 

			// Set totalPrice 
			double totalPrice = quanty * itemCart.getProduct().getPrice(); 
			itemCart.setTotalPrice(totalPrice);
		}
		cart.put(id, itemCart);
		return cart; 
	}

	// Delete Cart 
	public HashMap<Long, ShopCartDto> DeleteCart(long id, HashMap<Long, ShopCartDto> cart) {
		// Check cart  
		if(cart == null) {
			return cart; 
		}
		if(cart.containsKey(id)) {
			cart.remove(id); 
		}
		return cart; 
	}

	// Total Quanty 
	public int TotalQuanty(HashMap<Long, ShopCartDto> cart) {
		int totalQuanty = 0 ; 
		for(Map.Entry<Long, ShopCartDto> itemCart : cart.entrySet()) {
			totalQuanty += itemCart.getValue().getQuanty();
		}
		return totalQuanty ; 
	}

	// Total Price 
	public double TotalPrice(HashMap<Long, ShopCartDto> cart) {
		double totalPrice = 0.0 ; 
		for(Map.Entry<Long, ShopCartDto> itemCart : cart.entrySet()) {
			totalPrice += itemCart.getValue().getTotalPrice();
		}
		return totalPrice ; 
	}
}
