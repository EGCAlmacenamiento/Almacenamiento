package services;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import repositories.VoteRepository;
import security.Authority;
import utilities.DPUtils;
import domain.Vote;


@Service
@Transactional
public class VoteService {
	
	// Managed repository -----------------------
	
	@Autowired
	private VoteRepository voteRepository;
	
	// Supporting services -----------------------
	
	
	// Simpled CRUD methods ----------------------
	
	public Vote findOne(int VoteId){
		return voteRepository.findOne(VoteId);
	}
	
	
	//---------------
	
	public Collection<Vote> findAllVotesByMomentDescending(int votationId){
		Assert.isTrue(DPUtils.hasRole(Authority.ADMIN), "You don't have privileges to perform this action.");
		return voteRepository.findAllVotesByMomentDescending(votationId);
	}

}
