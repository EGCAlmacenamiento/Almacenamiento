package repositories;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import domain.Vote;

@Repository
public interface VoteRepository 
			extends JpaRepository<Vote, Integer>{
	
	@Query("select v from Vote v where v.votation.id=?1 order by moment desc")
	public Collection<Vote> findAllVotesByMomentDescending(int votationId);

}
