/* StringToVotationConverter.java
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

import repositories.VotationRepository;
import domain.Votation;

@Component
@Transactional
public class StringToVotationConverter implements Converter<String, Votation> {

	@Autowired
	VotationRepository votationRepository;

	@Override
	public Votation convert(String key) {
		Assert.hasText(key);
		
		Votation result;
		int id;
	
		id = Integer.valueOf(key);		
		result = votationRepository.findOne(id);
		Assert.notNull(result);
		
		return result;
	}

}
