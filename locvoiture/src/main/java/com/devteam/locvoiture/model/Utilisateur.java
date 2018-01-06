package com.devteam.locvoiture.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class Utilisateur {
	@Id
	@GeneratedValue
private int idUtlisateur;
private String nom;
private String prenom;
private String email;
private String adresse;
private String tel;
private String login;
private String password;
private Date dateNaissance;

public int getIdUtlisateur() {
	return idUtlisateur;
}
public void setIdUtlisateur(int idUtlisateur) {
	this.idUtlisateur = idUtlisateur;
}
public String getNom() {
	return nom;
}
public void setNom(String nom) {
	this.nom = nom;
}
public String getPrenom() {
	return prenom;
}
public void setPrenom(String prenom) {
	this.prenom = prenom;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getAdresse() {
	return adresse;
}
public void setAdresse(String adresse) {
	this.adresse = adresse;    
} 
public String getTel() {
	return tel;
}
public void setTel(String tel) {
	this.tel = tel;
}
public String getLogin() {
	return login;
}
public void setLogin(String login) {
	this.login = login;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public Date getDateNaissance() {
	return dateNaissance;
}
public void setDateNaissance(Date dateNaissance) {
	this.dateNaissance = dateNaissance;
}



}
