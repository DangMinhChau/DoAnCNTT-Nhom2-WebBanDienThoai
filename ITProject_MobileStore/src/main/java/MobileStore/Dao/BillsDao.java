package MobileStore.Dao;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import MobileStore.Entity.BillDetail;
import MobileStore.Entity.Bills;
import MobileStore.Entity.Mapper.MapperBill;
import MobileStore.Entity.Mapper.MapperBillDetails;

@Repository
public class BillsDao extends BaseDao{
	public int AddBills(Bills bills){
		// TODO Auto-generated method stub
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO bills ");
		sql.append("( ");
		sql.append(" email, ");
		sql.append(" phone, ");
		sql.append(" display_name, ");
		sql.append(" address, ");
		sql.append(" total, ");
		sql.append(" quanty, ");
		sql.append(" note, ");
		sql.append(" payments ");
		sql.append(") ");
		sql.append(" ");
		sql.append("VALUES ( ");
		sql.append("   '"+bills.getEmail()+"', ");
		sql.append("   '"+bills.getPhone()+"', ");
		sql.append("   '"+bills.getDisplay_name()+"', ");
		sql.append("   '"+bills.getAddress()+"', ");
		sql.append("    "+bills.getTotal()+", ");
		sql.append("    "+bills.getQuanty()+", ");
		sql.append("   '"+bills.getNote()+"', ");
		sql.append("   '"+bills.getPayments()+"' ");
		sql.append(" )");
		int insert = _jdbcTemplate.update(sql.toString()); 
		return insert;
	}

	public long GetIdLastBills() {
		// TODO Auto-generated method stub
		StringBuffer sql = new StringBuffer(); 
		sql.append("SELECT  MAX(id) FROM bills;");
		long id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Long.class); 
		return id;
	}

	public int AddBillsDetail(BillDetail billDetail) {
		// TODO Auto-generated method stub
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT INTO billdetail ( ");
		sql.append("   id_product, ");
		sql.append("    id_bills, ");
		sql.append("    quanty, ");
		sql.append("    total ");
		sql.append(") ");
		sql.append("VALUES ( ");
		sql.append("  "+billDetail.getId_product()+", ");
		sql.append("  "+billDetail.getId_bills()+", ");
		sql.append("  "+billDetail.getQuanty()+", ");
		sql.append("  "+billDetail.getTotal()+" ");
		sql.append(")");
		int insert = _jdbcTemplate.update(sql.toString()); 
		return insert; 
	}

	public List<Bills> getBills(){
		List<Bills> list = new ArrayList<Bills>(); 
		String sql = "SELECT * FROM bills";  
		list = _jdbcTemplate.query(sql, new MapperBill()); 
		return list; 
	}

	public List<BillDetail> getBillDetailsByIdBill(Serializable id) {
		String sql = "SELECT * FROM `billdetail` WHERE id_bills = " +id+";" ; 
		List<BillDetail> list = new ArrayList<BillDetail>(); 
		list = _jdbcTemplate.query(sql, new MapperBillDetails()); 
		return list; 
	}
	
}
