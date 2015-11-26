package repositories;

import java.util.Collection;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import domain.Votation;

@Repository
public interface VotationRepository 
			extends JpaRepository<Votation, Integer>{
	
	@Query("select v from Votation v order by moment desc")
	public Collection<Votation> findAllVotationsByMomentDescending();

}
