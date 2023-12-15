package MobileStore.Entity.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import MobileStore.Entity.Bills;

public class MapperBill implements RowMapper<Bills>{

	@Override
	public Bills mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Bills bills = new Bills() ;
		bills.setId(rs.getLong("id"));
		bills.setEmail(rs.getString("email"));
		bills.setPhone(rs.getString("phone"));
		bills.setDisplay_name(rs.getString("display_name"));
		bills.setAddress(rs.getString("address"));
		bills.setTotal(rs.getDouble("total"));
		bills.setQuanty(rs.getInt("quanty"));
		bills.setNote(rs.getString("note"));
		bills.setPayments(rs.getString("payments"));
		return bills;
	}
}
