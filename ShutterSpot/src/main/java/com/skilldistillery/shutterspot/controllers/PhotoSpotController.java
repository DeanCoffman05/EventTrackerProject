package com.skilldistillery.shutterspot.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skilldistillery.shutterspot.entities.PhotoSpot;
import com.skilldistillery.shutterspot.services.PhotoSpotService;
@RestController
@RequestMapping("api")
public class SpotController {

		@Autowired 
		private PhotoSpotService spotService;
		
		@GetMapping("photospot")
		List<PhotoSpot> listSpots(){
			return spotService.listAllSpots();
		}
		
		
}
