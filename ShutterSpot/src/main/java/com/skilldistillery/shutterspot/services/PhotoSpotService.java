package com.skilldistillery.shutterspot.services;

import java.util.List;

import com.skilldistillery.shutterspot.entities.PhotoSpot;

public interface PhotoSpotService {
	List<PhotoSpot> listAllSpots();
	PhotoSpot findSpotById(int spotId);
	PhotoSpot create(PhotoSpot newSpot);
	PhotoSpot update(int spotId, PhotoSpot newSpot);
	boolean delete (int spotId);

}
