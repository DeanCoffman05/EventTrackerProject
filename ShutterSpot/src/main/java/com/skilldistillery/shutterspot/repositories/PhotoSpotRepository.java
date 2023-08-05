package com.skilldistillery.shutterspot.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.skilldistillery.shutterspot.entities.PhotoSpot;

public interface PhotoSpotRepository extends JpaRepository<PhotoSpot, Integer> {

}
