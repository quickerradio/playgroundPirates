package com.playgroundpirates.playground.controller;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.playgroundpirates.playground.Event;
import com.playgroundpirates.playground.dao.EventRepo;

@Controller
public class IndexController {
	
	@Autowired
	EventRepo eventRepo;
	
	@RequestMapping("/")
	public String serverHomepage() {
		Collection<Event> events = eventRepo.getUpcomingGame();
		
		return "index2";
	}
}
