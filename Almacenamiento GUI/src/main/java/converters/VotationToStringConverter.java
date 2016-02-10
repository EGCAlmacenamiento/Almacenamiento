
/* VotationToStringConverter.java
*
* Copyright (C) 2013 Universidad de Sevilla
* 
* The use of this project is hereby constrained to the conditions of the 
* TDG Licence, a copy of which you may download from 
* http://www.tdg-seville.info/License.html
* 
*/

package converters;

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import domain.Votation;

@Component
@Transactional
public class VotationToStringConverter implements Converter<Votation, String> {
	
	@Override
	public String convert(Votation votation) {
		Assert.notNull(votation);
		
		String result;

		result = String.valueOf(votation.getId());
		
		return result;
	}

}

