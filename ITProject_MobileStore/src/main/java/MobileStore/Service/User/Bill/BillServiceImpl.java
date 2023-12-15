package MobileStore.Service.User.Bill;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MobileStore.DTO.ShopCartDto;
import MobileStore.Dao.BillsDao;
import MobileStore.Entity.BillDetail;
import MobileStore.Entity.Bills;

@Service
public class BillServiceImpl implements IBillService{
 
	@Autowired
	private BillsDao billsDao; 
	
	@Override
	public int AddBills(Bills bills) {
		// TODO Auto-generated method stub
		return billsDao.AddBills(bills);
	}

	@Override
	public void AddBillsDetail(HashMap<Long, ShopCartDto> carts) {
		// TODO Auto-generated method stub
		long idBills = billsDao.GetIdLastBills(); 
		
		for(Map.Entry<Long, ShopCartDto> itemCart : carts.entrySet()) {
			BillDetail billDetail = new BillDetail(); 
			
			billDetail.setId_bills(idBills);
			billDetail.setId_product(itemCart.getValue().getProduct().getId_product());
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billsDao.AddBillsDetail(billDetail);
		}
	} 
}
