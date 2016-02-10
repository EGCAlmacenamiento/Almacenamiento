/* StringToVoteConverter.java
 *
 * Copyright (C) 2013 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 * 
 */

package converters;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.VoteRepository;
import domain.Vote;

@Component
@Transactional
public class StringToVoteConverter implements Converter<String, Vote> {

	@Autowired
	VoteRepository voteRepository;

	@Override
	public Vote convert(String key) {
		Assert.hasText(key);
		
		Vote result;
		int id;
	
		id = Integer.valueOf(key);		
		result = voteRepository.findOne(id);
		Assert.notNull(result);
		
		return result;
	}

}
