package com.skilldistillery.shutterspot.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skilldistillery.shutterspot.entities.PhotoSpot;
import com.skilldistillery.shutterspot.repositories.PhotoSpotRepository;
@Service
public class PhotoSpotServiceImpl implements PhotoSpotService {
	@Autowired
	 private PhotoSpotRepository spotRepo;
	
	@Override
	public List<PhotoSpot> listAllSpots() {
		// TODO Auto-generated method stub
		return spotRepo.findAll();
	}

	@Override
	public PhotoSpot getSpot(int spotId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PhotoSpot create(PhotoSpot newSpot) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PhotoSpot update(int spotId, PhotoSpot newSpot) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(int spotId) {
		// TODO Auto-generated method stub
		return false;
	}

	

}
