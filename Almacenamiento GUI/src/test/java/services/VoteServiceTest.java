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
import domain.Vote;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/datasource.xml",
		"classpath:spring/config/packages.xml" })
@Transactional
@TransactionConfiguration(defaultRollback = false)
public class VoteServiceTest extends AbstractTest {
	@Autowired
	private VoteService voteService;

	@Test
	public void checkfindOne() {
		System.out.println("Test para comprobar el metodo findOne:");
		authenticate("admin1");
		int voteId = 8;
		Vote vote = voteService.findOne(voteId);
		System.out.println("el voto con id " + voteId + "es: " + vote);
		unauthenticate();

	}

	@Test
	public void checkfindAllVotationsByMomentDescending() {
		System.out
				.println("Test para comprobar el metodo findAllVotationsByMomentDescending:");
		authenticate("admin1");
		int votationId = 6;
		Collection<Vote> votes = voteService
				.findAllVotesByMomentDescending(votationId);
		System.out.println("la lista de votaciones es: " + votes);
		unauthenticate();
	}
}
