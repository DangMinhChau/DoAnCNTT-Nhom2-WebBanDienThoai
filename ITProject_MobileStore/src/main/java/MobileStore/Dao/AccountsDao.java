package MobileStore.Dao;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import MobileStore.Entity.Accounts;
import MobileStore.Entity.Mapper.MapperUsers;

@Repository
public class AccountsDao extends BaseDao{

	public int AddAccount(Accounts user) {
		// TODO Auto-generated method stub
		StringBuffer  sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO accounts ");
		sql.append("( ");
		sql.append("  email, ");
		sql.append("  password, ");
		sql.append("  display_name, ");
		sql.append("  address, ");
		sql.append("  Phone ");
		sql.append(") ");
		sql.append("VALUES ( ");
		sql.append(" '"+user.getEmail()+"', ");
		sql.append(" '"+user.getPassword()+"', ");
		sql.append(" '"+user.getDisplay_name()+"', ");
		sql.append(" '"+user.getAddress()+"', ");
		sql.append(" '"+user.getPhone()+"' ");
		sql.append(")");
		
		// Update on database 
		int insert = _jdbcTemplate.update(sql.toString()); 
		return insert;
	}
	
	// Check account by email on database 
	public Accounts GetUserByAccount(Accounts accounts) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM accounts WHERE email = '" +accounts.getEmail()+ "'"; 
		Accounts result = _jdbcTemplate.queryForObject(sql, new MapperUsers()); 
		return result;
	}
	
	// Get Account  
	public List<Accounts> getAccounts() {
		List<Accounts> list = new ArrayList<Accounts>();
		String sql = "SELECT * FROM accounts WHERE role = 0" ;
		list = _jdbcTemplate.query(sql, new MapperUsers());
		return list; 
	}

	// Get Account by Id 
	public Accounts getAccountById(Serializable id) {
		String sql = "SELECT * FROM accounts WHERE id = ?";  
		Accounts accounts = _jdbcTemplate.queryForObject(sql, new MapperUsers(), id);
		return accounts; 
	}

	// Delete Account 
	public void DeleteAccounts(Serializable id) {
		String sql = "DELETE FROM accounts WHERE id = ?" ; 
		_jdbcTemplate.update(sql,id);
	}
	
	
	// Update Account 
	public int UpdateAccount(Accounts user,Serializable id) {
		StringBuffer  sql = new StringBuffer();
		sql.append("UPDATE accounts SET email= '"+user.getEmail()+"', ");
		sql.append("display_name = '"+user.getDisplay_name()+"', ");
		sql.append("address = '"+user.getAddress()+"', ");
		sql.append("Phone ='"+user.getPhone()+"' ");
		sql.append("WHERE id = "+id+" ;");
		
	    int insert = _jdbcTemplate.update(sql.toString()); 
		return insert;
	}

	public List<Accounts> GetEmailOnAccount() {
		String sql = "SELECT * FROM accounts "; 
		List<Accounts> list = new ArrayList<Accounts>(); 
		list = _jdbcTemplate.query(sql, new MapperUsers()); 
		return list; 
	}
}
