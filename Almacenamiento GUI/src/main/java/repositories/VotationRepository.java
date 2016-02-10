package repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import domain.Votation;

@Repository
public interface VotationRepository extends JpaRepository<Votation, Integer> {

}
