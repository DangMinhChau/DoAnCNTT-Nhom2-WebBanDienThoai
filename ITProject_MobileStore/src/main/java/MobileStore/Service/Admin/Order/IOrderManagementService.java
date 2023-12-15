package MobileStore.Service.Admin.Order;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Service;

import MobileStore.Entity.BillDetail;
import MobileStore.Entity.Bills;

@Service
public interface IOrderManagementService {
	public List<Bills> getBills(); 
	public List<BillDetail> getBillDetailsByIdBill(Serializable id) ; 
}

