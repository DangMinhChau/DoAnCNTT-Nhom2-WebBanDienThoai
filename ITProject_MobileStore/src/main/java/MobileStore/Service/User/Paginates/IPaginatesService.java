package MobileStore.Service.User.Paginates;

import org.springframework.stereotype.Service;

import MobileStore.DTO.PaginatesDto;

@Service
public interface IPaginatesService {
     public PaginatesDto getInfoPaginatesDto(int totalPage, int limit, int currentPage) ; 
}
