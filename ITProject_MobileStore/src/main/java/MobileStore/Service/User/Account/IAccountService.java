package MobileStore.Service.User.Account;

import java.util.List;

import org.springframework.stereotype.Service;

import MobileStore.Entity.Accounts;

@Service
public interface IAccountService {
	public int AddAccount(Accounts accounts); 
	public Accounts CheckAccount(Accounts accounts); 
	public Accounts GetUserByAccount(Accounts accounts);
	public List<Accounts> GetEmailOnAccount() ;
}
