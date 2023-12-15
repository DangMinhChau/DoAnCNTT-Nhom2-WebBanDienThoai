package MobileStore.Entity.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import MobileStore.Entity.BillDetail;

public class MapperBillDetails implements RowMapper<BillDetail>{ 
	
	@Override
	public BillDetail mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		BillDetail billDetail = new BillDetail(); 
		
		billDetail.setId(rs.getLong("id"));
		billDetail.setId_bills(rs.getLong("id_bills")); 
		billDetail.setId_product(rs.getLong("id_product"));
		billDetail.setQuanty(rs.getInt("quanty"));
		billDetail.setTotal(rs.getDouble("total"));
		return billDetail;
	}
  
}
