package com.skilldistillery.shutterspot.services;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

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
	    try {
	        return spotRepo.findAll();
	    } catch (Exception e) {
	        e.printStackTrace();
	        return Collections.emptyList();
	    }
	}

	@Override
	public PhotoSpot findSpotById(int spotId) {
	    try {
	        Optional<PhotoSpot> photoOpt = spotRepo.findById(spotId);
	        return photoOpt.orElse(null);
	    } catch (Exception e) {
	        e.printStackTrace();
	        return null;
	    }
	}


	@Override
	public PhotoSpot create(PhotoSpot newSpot) {
	    try {
	        return spotRepo.save(newSpot);
	    } catch (Exception e) {
	        e.printStackTrace();
	        return null;
	    }
	}


	@Override
	public PhotoSpot update(int spotId, PhotoSpot newSpot) {
	    try {
	        Optional<PhotoSpot> existingSpotOpt = spotRepo.findById(spotId);
	        if (existingSpotOpt.isPresent()) {
	            PhotoSpot existingSpot = existingSpotOpt.get();
	            existingSpot.setName(newSpot.getName());
	            existingSpot.setAddress(newSpot.getAddress());
	            existingSpot.setCity(newSpot.getCity());
	            existingSpot.setState(newSpot.getState());
	            return spotRepo.saveAndFlush(existingSpot);
	        } else {
	            return null;
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	        return null;
	    }
	}


	@Override
	public boolean delete(int spotId) {
	    try {
	        Optional<PhotoSpot> toDeleteOpt = spotRepo.findById(spotId);
	        if (toDeleteOpt.isPresent()) {
	            PhotoSpot toDelete = toDeleteOpt.get();
	            if (toDelete.getId() == spotId) {
	                spotRepo.deleteById(spotId);
	                return true;
	            }
	        }
	        return false;
	    } catch (Exception e) {
	        e.printStackTrace();
	        return false;
	    }
	}


}
