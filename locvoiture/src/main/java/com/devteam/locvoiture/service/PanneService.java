package com.devteam.locvoiture.service;

import java.util.List;


import com.devteam.locvoiture.model.Panne;

public interface PanneService {
	
	void ajouterPanne(Panne r);
	List<Panne> getPannes();
	Panne getUnePanneById(int id);
	void delete(Panne r);
	void modifier(Panne r);

}
