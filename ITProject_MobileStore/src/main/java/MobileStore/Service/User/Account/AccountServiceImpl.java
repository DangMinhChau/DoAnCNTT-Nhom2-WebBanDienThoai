package MobileStore.Service.User.Account;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import MobileStore.Dao.AccountsDao;
import MobileStore.Entity.Accounts;

@Service 
public class AccountServiceImpl implements IAccountService{

	@Autowired 
	private AccountsDao userDao = new AccountsDao(); 

	@Override
	public int AddAccount(Accounts accounts) {
		// TODO Auto-generated method stub
		// Check email && check phone format. 
		List<Accounts> listAccounts = userDao.GetEmailOnAccount();
		String gmailPattern = "^[a-zA-Z0-9]+@gmail.com$";
		String phonePattern = "^\\d{10}$"; 
		if(accounts.getEmail().matches(gmailPattern) 
				&& accounts.getPhone().matches(phonePattern) 
				&& accounts.getPhone().length() == 10) {
			for (Accounts acc: listAccounts) {
				if(!accounts.getEmail().equals(acc.getEmail())) {
					// Encode password 
					accounts.setPassword(BCrypt.hashpw(accounts.getPassword(), BCrypt.gensalt(12)));
					return userDao.AddAccount(accounts);
				}
				else {
					return -1 ; 
				}
			}
		}
		return 0; 		
	}

	@Override
	public Accounts CheckAccount(Accounts accounts) {
		// TODO Auto-generated method stub
		String checkPassword = accounts.getPassword(); 
		accounts = userDao.GetUserByAccount(accounts); 
		if(accounts != null) {
			if(BCrypt.checkpw(checkPassword, accounts.getPassword())) {
				return accounts; 
			}
			else {
				return null; 
			}
		}
		return null; 
	}

	@Override
	public Accounts GetUserByAccount(Accounts accounts) {
		// TODO Auto-generated method stub
		return userDao.GetUserByAccount(accounts);
	}

	@Override
	public List<Accounts> GetEmailOnAccount() {
		// TODO Auto-generated method stub
		return userDao.GetEmailOnAccount();
	}
}
