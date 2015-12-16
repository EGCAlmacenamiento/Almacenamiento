package services;

import java.util.Collection;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import utils.AbstractTest;
import domain.Votation;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/datasource.xml",
		"classpath:spring/config/packages.xml" })
@Transactional
@TransactionConfiguration(defaultRollback = false)
public class VotationServiceTest extends AbstractTest {

	@Autowired
	private VotationService votationService;

	@Test
	public void checkfindOne() {
		System.out.println("Test para comprobar el metodo findOne:");
		authenticate("admin1");
		int votationId = 6;
		Votation votation = votationService.findOne(votationId);
		System.out.println("la votaci�n con id " + votationId + "es: "
				+ votation);
		unauthenticate();

	}

	@Test
	public void checkfindAllVotationsByMomentDescending() {
		System.out
				.println("Test para comprobar el metodo findAllVotationsByMomentDescending:");
		authenticate("admin1");
		Collection<Votation> votations = votationService
				.findAllVotationsByMomentDescending();
		System.out.println("la lista de votaciones es: " + votations);
		unauthenticate();
	}

}
