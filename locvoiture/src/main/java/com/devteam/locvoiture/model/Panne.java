package com.devteam.locvoiture.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
@Entity
public class Panne {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int idPanne;
	private String typePanne;
	private Date datePanne;
	private double montant;
	private String description;
	@ManyToOne
	private Vehicule vehicule;
	public Vehicule getVehicule() {
		return vehicule;
	}
	public void setVehicule(Vehicule vehicule) {
		this.vehicule = vehicule;
	}
	public int getIdPanne() {
		return idPanne;
	}
	public void setIdPanne(int idPanne) {
		this.idPanne = idPanne;
	}    
	public String getTypePanne() {
		return typePanne;
	}
	public void setTypePanne(String typePanne) {
		this.typePanne = typePanne;
	}
	public Date getDatePanne() {
		return datePanne;
	}
	public void setDatePanne(Date datePanne) {
		this.datePanne = datePanne;
	}
	public double getMontant() {
		return montant;
	}
	public void setMontant(double montant) {
		this.montant = montant;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "Panne [idPanne=" + idPanne + ", typePanne=" + typePanne + ", datePanne=" + datePanne + ", montant="
				+ montant + ", description=" + description + ", vehicule=" + vehicule + "]";
	}
	

}
