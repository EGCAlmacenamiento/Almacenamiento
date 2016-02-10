/* VoteAdminController.java
 *
 * Copyright (C) 2014 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 * 
 */

package controllers;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import services.VotationService;
import services.VoteService;
import domain.Votation;
import domain.Vote;

@Controller
@RequestMapping("/admin")
public class AdminController extends AbstractController {

	// Services ---------------------------------------------------------------

	@Autowired
	private VoteService voteService;
	@Autowired
	private VotationService votationService;

	// Constructors -----------------------------------------------------------

	public AdminController() {
		super();
	}

	// Listing
	// votations----------------------------------------------------------------

	@RequestMapping(value = "/votationList", method = RequestMethod.GET)
	public ModelAndView votationList() {
		ModelAndView result;
		Collection<Votation> votations;

		votations = votationService.findAll();
		result = new ModelAndView("admin/votationList");
		result.addObject("votations", votations);

		return result;
	}

	// Listing
	// votes----------------------------------------------------------------

	@RequestMapping(value = "/voteList", method = RequestMethod.GET)
	public ModelAndView voteList(
			@RequestParam(required = true) Integer votationId) {
		ModelAndView result;
		Collection<Vote> votes;
		Votation votation = votationService.findOne(votationId);

		votes = voteService.findAll(votationId);
		result = new ModelAndView("admin/voteList");
		result.addObject("votes", votes);
		result.addObject("votation", votation);
		return result;

	}

}