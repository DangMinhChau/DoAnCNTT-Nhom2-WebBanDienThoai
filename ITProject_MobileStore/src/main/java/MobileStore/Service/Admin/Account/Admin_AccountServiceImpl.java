package MobileStore.Service.Admin.Account;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MobileStore.Dao.AccountsDao;
import MobileStore.Entity.Accounts;

@Service
public class Admin_AccountServiceImpl implements IAdmin_AccountService{

	@Autowired 
	AccountsDao accountsDao = new AccountsDao();
	
	@Override
	public List<Accounts> getAccounts() {
		// TODO Auto-generated method stub
		return accountsDao.getAccounts();
	}
	
	@Override
	public void DeleteAccounts(Serializable id) {
		// TODO Auto-generated method stub
		accountsDao.DeleteAccounts(id);
	}
	
	@Override
	public Accounts getAccountById(Serializable id) {
		// TODO Auto-generated method stub
		return accountsDao.getAccountById(id);
	}

	@Override
	public int UpdateAccount(Accounts accounts,Serializable id) {
		// TODO Auto-generated method stub
		return accountsDao.UpdateAccount(accounts, id);
	}
}
