package MobileStore.Service.User.Bill;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import MobileStore.DTO.ShopCartDto;
import MobileStore.Entity.Bills;

@Service
public interface IBillService {
	public int AddBills(Bills bills);
	public void AddBillsDetail(HashMap<Long, ShopCartDto> carts);
}
