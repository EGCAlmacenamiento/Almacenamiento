/* StringTovoteConverter.java
 *
 * Copyright (C) 2014 Universidad de Sevilla
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

import repositories.VoteRepository;
import domain.Vote;

@Component
@Transactional
public class StringToVoteConverter implements Converter<String, Vote> {

	@Autowired
	VoteRepository voteRepository;

	@Override
	public Vote convert(String text) {
		Vote result;
		int id;

		try {
			id = Integer.valueOf(text);
			result = voteRepository.findOne(id);
		} catch (Exception oops) {
			throw new IllegalArgumentException(oops);
		}

		return result;
	}

}
