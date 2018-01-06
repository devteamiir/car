package com.devteam.locvoiture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devteam.locvoiture.model.Vehicule;
import com.devteam.locvoiture.repository.VehiculeFrontRepository;

@Service
public class VehiculeFrontServiceImpl implements VehiculeFrontService{

	@Autowired
	VehiculeFrontRepository vehiculeFrontRepository;

	@Override
	public List<Vehicule> getVehicules() {
		// TODO Auto-generated method stub
		return vehiculeFrontRepository.findAll();
	}

	@Override
	public Vehicule getVehiculeById(int id) {
		// TODO Auto-generated method stub
		return vehiculeFrontRepository.findOne(id);
	}

	@Override
	public List<Vehicule> getVehiculeByCritere(String marque, String couleur, String prix, String categorie) {
		// TODO Auto-generated method stub
		return vehiculeFrontRepository.findByMarque(marque, couleur, prix, categorie);
	}
	
}
