package MobileStore.Service.User.Cart;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import MobileStore.DTO.ShopCartDto;

@Service
public interface ICartService {

	public HashMap<Long, ShopCartDto> AddCart(long id, HashMap<Long, ShopCartDto> cart);
	public HashMap<Long, ShopCartDto> Edit(long id, int quanty, HashMap<Long, ShopCartDto> cart) ;
	public HashMap<Long, ShopCartDto> Delete(long id, HashMap<Long, ShopCartDto> cart);
	public int TotalQuanty(HashMap<Long, ShopCartDto> cart) ;
	public double TotalPrice(HashMap<Long, ShopCartDto> cart);
}
