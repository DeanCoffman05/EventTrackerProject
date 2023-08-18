package com.skilldistillery.shutterspot.controllers;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skilldistillery.shutterspot.entities.PhotoSpot;
import com.skilldistillery.shutterspot.services.PhotoSpotService;
@CrossOrigin({"*", "http://localhost/"})
@RestController
@RequestMapping("api")
public class PhotoSpotController {

    @Autowired 
    private PhotoSpotService spotService;

    @GetMapping("photospots")
    List<PhotoSpot> listSpots(){
        return spotService.listAllSpots();
    }

    @GetMapping("photospots/{spotId}")
    public PhotoSpot findSpotById(@PathVariable Integer spotId, HttpServletResponse res) {
        PhotoSpot photoSpot = spotService.findSpotById(spotId);
        if (photoSpot == null) {
            res.setStatus(HttpServletResponse.SC_NOT_FOUND);  // 404
        }
        return photoSpot;
    }

    @PostMapping("photospots")
    public PhotoSpot createSpot(@RequestBody PhotoSpot newSpot, HttpServletResponse res) {
        newSpot = spotService.create(newSpot);
        if (newSpot == null) {
            res.setStatus(HttpServletResponse.SC_BAD_REQUEST);  // 400
        } else {
            res.setStatus(HttpServletResponse.SC_CREATED);  // 201
        }
        return newSpot;
    }

    @PutMapping("photospots/{spotId}")
    public PhotoSpot updateSpot(@PathVariable Integer spotId, @RequestBody PhotoSpot newSpot, HttpServletResponse res) {
        newSpot = spotService.update(spotId, newSpot);
        if (newSpot == null) {
            res.setStatus(HttpServletResponse.SC_NOT_FOUND);  // 404
        }
        return newSpot;
    }

    @DeleteMapping("photospots/{spotId}")
    public void deleteSpot(@PathVariable Integer spotId, HttpServletResponse res) {
        boolean deleted = spotService.delete(spotId);
        if (!deleted) {
            res.setStatus(HttpServletResponse.SC_NOT_FOUND);  // 404
        }
    }
}
