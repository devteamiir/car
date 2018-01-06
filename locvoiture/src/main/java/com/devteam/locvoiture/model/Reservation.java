package com.devteam.locvoiture.model;

import java.util.Date;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;


@Entity
public class Reservation {
	@Id
	@GeneratedValue
	private int idReservatiion;
	private Date dateFin;
	private String adresse;
	private boolean choffeur;
	@ManyToOne
	private Client client;
	@ManyToOne
	private Vehicule vehicule;
	@OneToOne
	private Facture facture;
	    
	public Facture getFacture() {
		return facture;
	}
	public void setFacture(Facture facture) {
		this.facture = facture;
	}
	public Vehicule getVehicule() {
		return vehicule;
	}
	public void setVehicule(Vehicule vehicule) {
		this.vehicule = vehicule;
	}
	public Client getClient() {
		return client;
	}
	public void setClient(Client client) {
		this.client = client;
	}
	public int getIdReservatiion() {
		return idReservatiion;
	}
	public void setIdReservatiion(int idReservatiion) {
		this.idReservatiion = idReservatiion;
	}
	public Date getDateFin() {
		return dateFin;
	}
	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public boolean isChoffeur() {
		return choffeur;
	}
	public void setChoffeur(boolean choffeur) {
		this.choffeur = choffeur;
	}
	
	

}
