/* VoteAdminController.java
 *
 * Copyright (C) 2014 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 * 
 */

package controllers.admin;

import java.util.Collection;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.Assert;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import services.VoteService;
import controllers.AbstractController;
import domain.Vote;

@Controller
@RequestMapping("/Vote/Admin")
public class VoteAdminController extends AbstractController {
	
	// Services ---------------------------------------------------------------

	@Autowired
	private VoteService VoteService;	
	
	// Constructors -----------------------------------------------------------
	
	public VoteAdminController() {
		super();
	}

	// Listing ----------------------------------------------------------------
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ModelAndView list() {
		ModelAndView result;
		Collection<Vote> Votes;
		
		Votes = VoteService.findAllOrderByMomentDescending();
		result = new ModelAndView("Vote/list");
		result.addObject("Votes", Votes);				
		
		return result;
	}
	
	// Creation ---------------------------------------------------------------

	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView create() {
		ModelAndView result;
		Vote Vote;

		Vote = VoteService.create();
		result = createEditModelAndView(Vote);

		return result;
	}

	// Edition ----------------------------------------------------------------
	
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public ModelAndView edit(@RequestParam int VoteId) {
		ModelAndView result;
		Vote Vote;

		Vote = VoteService.findOne(VoteId);		
		Assert.notNull(Vote);
		result = createEditModelAndView(Vote);

		return result;
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST, params = "save")
	public ModelAndView save(@Valid Vote Vote, BindingResult binding) {
		ModelAndView result;		

		if (binding.hasErrors()) {
			result = createEditModelAndView(Vote);
		} else {
			try {				
				VoteService.save(Vote);
				result = new ModelAndView("redirect:list.do");
			} catch (Throwable oops) {				
				result = createEditModelAndView(Vote, "Vote.commit.error");				
			}
		}

		return result;
	}
			
	@RequestMapping(value = "/edit", method = RequestMethod.POST, params = "delete")
	public ModelAndView delete(Vote Vote, BindingResult binding) {
		ModelAndView result;

		try {			
			VoteService.delete(Vote);			
			result = new ModelAndView("redirect:list.do");						
		} catch (Throwable oops) {	
			result = createEditModelAndView(Vote, "Vote.commit.error");
		}

		return result;
	}

	// Ancillary methods ------------------------------------------------------
	
	protected ModelAndView createEditModelAndView(Vote Vote) {
		ModelAndView result;

		result = createEditModelAndView(Vote, null);
		
		return result;
	}	
	
	protected ModelAndView createEditModelAndView(Vote Vote, String message) {
		ModelAndView result;
				
		result = new ModelAndView("Vote/edit");
		result.addObject("Vote", Vote);
		result.addObject("message", message);
		
		return result;
	}

}