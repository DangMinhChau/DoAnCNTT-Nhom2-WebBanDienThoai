package MobileStore.Service.Admin.Account;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Service;

import MobileStore.Entity.Accounts;

@Service
public interface IAdmin_AccountService {
	public List<Accounts> getAccounts(); 
	public void DeleteAccounts(Serializable id);
	public int UpdateAccount(Accounts accounts,Serializable id);
	public Accounts getAccountById(Serializable id);
}
