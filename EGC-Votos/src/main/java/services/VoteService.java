package services;

import java.util.Collection;
import java.util.Date;

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
	private VoteRepository VoteRepository;
	
	// Supporting services -----------------------
	
	
	// Simpled CRUD methods ----------------------
	
	public Vote findOne(int VoteId){
		return VoteRepository.findOne(VoteId);
	}
	
	public void save(Vote Vote){
		Date date = new Date(System.currentTimeMillis()-1000);
		Vote.setMoment(date);
		VoteRepository.save(Vote);
	}
	
	public void delete(Vote Vote){
		VoteRepository.delete(Vote);
	}
	
	public Vote create(){
		Vote res = new Vote();
		res.setMoment(new Date());
		return res;
	}
	
	//---------------
	
	public Collection<Vote> findAllOrderByMomentDescending(){
		Assert.isTrue(DPUtils.currentUserHasRole(Authority.ADMIN), "You don't have privileges to perform this action.");
		return VoteRepository.findAllOrderByMomentDescending();
	}

}
