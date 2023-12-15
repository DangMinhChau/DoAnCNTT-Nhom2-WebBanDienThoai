package MobileStore.Service.User.Paginates;

import org.springframework.stereotype.Service;

import MobileStore.DTO.PaginatesDto;

@Service
public class PaginateServiceImpl{
	public PaginatesDto getInfoPaginate(int totalData, int limit, int currentPage) {
		PaginatesDto paginatesDto = new PaginatesDto(); 
		
		// Set currentPage
		paginatesDto.setCurrentPage(checkCurrentPage(currentPage,paginatesDto.getTotalPage()));
		
		// Set Limit
		paginatesDto.setLimit(limit);
		
		// Set totalPage
		paginatesDto.setTotalPage(setInfoTotalPage(totalData, limit));
		
		// Set Start
		int start = findStart(paginatesDto.getCurrentPage(), limit) ; 
		paginatesDto.setStart(start);
		
		// Set End
		int end = findEnd(paginatesDto.getStart(), limit, totalData); 
		paginatesDto.setEnd(end);
		
		return paginatesDto; 
	}

    // Find End
	private int findEnd(int start, int limit, int totalData) {
		// TODO Auto-generated method stub
		return (start + limit) > totalData ? totalData: (start + limit - 1);
	}

    // Find Start
	private int findStart(int currentPage, int limit) {
		// TODO Auto-generated method stub
		return ((currentPage - 1) * limit) + 1;
	}

	// Set info for totalPage
	private int setInfoTotalPage(int totalData, int limit) {
		// TODO Auto-generated method stub
		int totalPage = 0 ;
		totalPage = totalPage * limit < totalData ? totalPage + 1 : totalPage; 
		return totalPage;  
	}
	
    // Check currentPage 
	public int checkCurrentPage(int currentPage, int totalPage) {
		if(currentPage < 1) {
			return 1; 
		}
		else if (currentPage > totalPage) {
			return totalPage;  
		}
		return currentPage ;
	}

}
