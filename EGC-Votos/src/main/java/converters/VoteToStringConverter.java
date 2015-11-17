/* VoteToStringConverter.java
 *
 * Copyright (C) 2014 Universidad de Sevilla
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

import domain.Vote;

@Component
@Transactional
public class VoteToStringConverter implements Converter<Vote, String> {

	@Override
	public String convert(Vote Vote) {
		String result;

		if (Vote == null)
			result = null;
		else
			result = String.valueOf(Vote.getId());

		return result;
	}

}
