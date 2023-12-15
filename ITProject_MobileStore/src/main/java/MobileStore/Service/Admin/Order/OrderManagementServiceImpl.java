package MobileStore.Service.Admin.Order;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MobileStore.Dao.BillsDao;
import MobileStore.Entity.BillDetail;
import MobileStore.Entity.Bills;

@Service
public class OrderManagementServiceImpl implements IOrderManagementService{

	@Autowired 
	private BillsDao billsDao = new BillsDao();  

	@Override
	public List<Bills> getBills() {
		// TODO Auto-generated method stub
		return billsDao.getBills();
	}

	@Override
	public List<BillDetail> getBillDetailsByIdBill(Serializable id) {
		// TODO Auto-generated method stub
		return billsDao.getBillDetailsByIdBill(id);
	}
}
