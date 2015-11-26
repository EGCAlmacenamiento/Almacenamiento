package services;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.VotationRepository;
import security.Authority;
import utilities.DPUtils;
import domain.Votation;


@Service
@Transactional
public class VotationService {
	
	// Managed repository -----------------------
	
	@Autowired
	private VotationRepository votationRepository;
	
	// Supporting services -----------------------
	
	
	// Simpled CRUD methods ----------------------
	
	public Votation findOne(int VotationId){
		return votationRepository.findOne(VotationId);
	}
	
	
	//---------------
	
	public Collection<Votation> findAllVotationsByMomentDescending(){
		Assert.isTrue(DPUtils.hasRole(Authority.ADMIN), "You don't have privileges to perform this action.");
		return votationRepository.findAllVotationsByMomentDescending();
	}

}
