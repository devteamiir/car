package com.devteam.locvoiture.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
@Entity
public class Vehicule {
	@Id
	@GeneratedValue
	private int idVehicule;
	private String modele;
	private String marque;
	private String couleur;
	private String matricule;
	private double km;
	private double prix;
	private String etat;
	private double prixpromo;
	@ManyToOne
	private TypeVehicule typeVehicule;
	public TypeVehicule getTypeVehicule() {
		return typeVehicule;
	}
	public void setTypeVehicule(TypeVehicule typeVehicule) {
		this.typeVehicule = typeVehicule;
	}
	public int getIdVehicule() {  
		return idVehicule;
	}  
	public void setIdVehicule(int idVehicule) {
		this.idVehicule = idVehicule;
	}
	public String getModele() {
		return modele;
	}
	public void setModele(String modele) {
		this.modele = modele;
	}
	public String getMarque() {
		return marque;
	}
	public void setMarque(String marque) {
		this.marque = marque;
	}
	public String getCouleur() {
		return couleur;
	}
	public void setCouleur(String couleur) {
		this.couleur = couleur;
	}
	public String getMatricule() {
		return matricule;
	}
	public void setMatricule(String matricule) {
		this.matricule = matricule;
	}
	public double getKm() {
		return km;
	}
	public void setKm(double km) {
		this.km = km;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	public String getEtat() {
		return etat;
	}
	public void setEtat(String etat) {
		this.etat = etat;
	}
	public double getPrixpromo() {
		return prixpromo;
	}
	public void setPrixpromo(double prixpromo) {
		this.prixpromo = prixpromo;
	}
	

}
