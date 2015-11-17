/* AbstractTest.java
 *
 * Copyright (C) 2015 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 * 
 */

package utilities;

import org.springframework.security.core.context.SecurityContextHolder;

import security.Authority;
import security.LoginService;

public class DPUtils {
	
	public static boolean currentUserHasRole(String role) {
		// if no logged user, it has no role
		if (SecurityContextHolder.getContext().getAuthentication() == null) {
			return false;
		}
		
		for (Authority auth : LoginService.getPrincipal().getAuthorities()) {
			if (auth.getAuthority().equals(role)) {
				return true;
			}
		}
		return false;
	}

}
