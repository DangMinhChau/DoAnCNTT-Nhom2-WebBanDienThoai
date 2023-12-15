package MobileStore.Service.User.Cart;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MobileStore.DTO.ShopCartDto;
import MobileStore.Dao.ShopCartDao;

@Service
public class CartServiceImpl implements ICartService{

	@Autowired  
	private ShopCartDao cartDao = new ShopCartDao(); 
	@Override
	public HashMap<Long, ShopCartDto> AddCart(long id, HashMap<Long, ShopCartDto> cart) {
		// TODO Auto-generated method stub
		return cartDao.AddCart(id, cart);
	}

	@Override
	public HashMap<Long, ShopCartDto> Edit(long id, int quanty, HashMap<Long, ShopCartDto> cart) {
		// TODO Auto-generated method stub
		return cartDao.EditCart(id, quanty, cart); 
	}

	@Override
	public HashMap<Long, ShopCartDto> Delete(long id, HashMap<Long, ShopCartDto> cart) {
		// TODO Auto-generated method stub
		return cartDao.DeleteCart(id, cart);
	}

	@Override
	public int TotalQuanty(HashMap<Long, ShopCartDto> cart) {
		// TODO Auto-generated method stub
		return cartDao.TotalQuanty(cart);
	}

	@Override
	public double TotalPrice(HashMap<Long, ShopCartDto> cart) {
		// TODO Auto-generated method stub
		return cartDao.TotalPrice(cart);
	}

}
