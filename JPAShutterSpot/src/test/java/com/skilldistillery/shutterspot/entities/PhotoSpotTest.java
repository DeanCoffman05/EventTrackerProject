package com.skilldistillery.shutterspot.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class PhotoSpotTest {
private static EntityManagerFactory emf;
private  EntityManager em;
private PhotoSpot spot;

	
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAShutterSpot");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		spot = em.find(PhotoSpot.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		spot = null;
	}

	@Test
	void test() {
		assertNotNull(spot);
		assertEquals("Cay Creek Park", spot.getName());
	}

}
