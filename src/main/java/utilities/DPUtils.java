package utilities;

import java.util.Collection;

import org.springframework.security.core.context.SecurityContextHolder;

import security.Authority;
import security.LoginService;
import domain.DomainEntity;

public class DPUtils {
	public static boolean hasRole(String ...privileges){
		
		if (SecurityContextHolder.getContext().getAuthentication() == null) {
			return false;
		}
		
		for(String privilege : privileges){
			for(Authority auth : LoginService.getPrincipal().getAuthorities()){
				if(auth.getAuthority().equals(privilege)){
					return true;
				}
			}
		}
		return false;
	}
	
	public static <T extends DomainEntity> boolean inCollection(Collection<T> collection, T item){
		boolean res = false;
		
		for(DomainEntity tmp : collection){
			if(item.getId() == tmp.getId()){
				res = true;
				break;
			}
		}
		
		return res;
	}

}
