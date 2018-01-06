package com.devteam.locvoiture.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devteam.locvoiture.model.Panne;
import com.devteam.locvoiture.repository.PanneRepository;


@Service("panneService")
public class PanneServiceImpl implements PanneService {
	
	@Autowired
	private PanneRepository panneRepository;

	@Override
	public void ajouterPanne(Panne r) {
		
		panneRepository.save(r);
		
	}
	
	
	@Override
	public void modifier(Panne r) {
		
		panneRepository.save(r);
		
	}

	@Override
	public List<Panne> getPannes() {
		
		return panneRepository.findAll();
	}
	
	
	
	@Override
	public  void delete(Panne r) {
		
		 panneRepository.delete(r);
		 
		 
	}


	@Override
	public Panne getUnePanneById(int id) {
		return panneRepository.findOne(id);
	}


	
	
	
	

}
