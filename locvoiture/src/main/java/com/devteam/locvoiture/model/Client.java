package com.devteam.locvoiture.model;

import javax.persistence.Entity;

@Entity
public class Client extends Utilisateur{
	
	private String numPermis;
	

	public String getNumPermis() {
		return numPermis;
	}

	public void setNumPermis(String numPermis) {
		this.numPermis = numPermis;
	}
	
    
	
	

}
