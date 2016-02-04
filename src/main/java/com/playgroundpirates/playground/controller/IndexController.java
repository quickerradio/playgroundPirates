package com.playgroundpirates.playground.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.playgroundpirates.playground.Event;
import com.playgroundpirates.playground.dao.EventRepo;

@Controller
public class IndexController {
	
	@Autowired
	EventRepo eventRepo;
	
	@RequestMapping("/")
	public String serverHomepage(Model model) {
		Collection<Event> events = eventRepo.getUpcomingGame();
		Collection<Event> otherEvents = eventRepo.getOtherEvent();
		
		model.addAttribute("events", events);
		model.addAttribute("otherEvents", otherEvents);
		
		return "index2";
	}
}
