package com.devteam.locvoiture.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class TypeVehicule {
	@Id
	@GeneratedValue
	private int idTypeVehicule;
	private String categorie;
	private int nbrPlace;
	private String carburant;
	public int getIdTypeVehicule() {
		return idTypeVehicule;
	}
	public void setIdTypeVehicule(int idTypeVehicule) {
		this.idTypeVehicule = idTypeVehicule;
	}
	public String getCategorie() {
		return categorie;
	}
	public void setCategorie(String categorie) {
		this.categorie = categorie;
	}
	public int getNbrPlace() {
		return nbrPlace;    
	}
	public void setNbrPlace(int nbrPlace) {
		this.nbrPlace = nbrPlace;
	}
	public String getCarburant() {
		return carburant;
	}
	public void setCarburant(String carburant) {
		this.carburant = carburant;
	}
	
}
