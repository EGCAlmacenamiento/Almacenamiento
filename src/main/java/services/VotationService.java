package services;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import repositories.VotationRepository;
import domain.Votation;

@Service
@Transactional
public class VotationService {

	// Managed repository -----------------------

	@Autowired
	private VotationRepository votationRepository;


	// Simpled CRUD methods ----------------------

	public Votation findOne(int VotationId) {
		return votationRepository.findOne(VotationId);
	}

	// ---------------

	public Collection<Votation> findAll() {
		return votationRepository.findAll();
	}
}
