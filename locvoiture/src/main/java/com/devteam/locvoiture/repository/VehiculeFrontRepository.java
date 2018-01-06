package com.devteam.locvoiture.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.devteam.locvoiture.model.Vehicule;

public interface VehiculeFrontRepository extends JpaRepository<Vehicule, Integer> {
	public List<Vehicule> findByMarque(String marque, String couleur, String prix, String categorie);

}
