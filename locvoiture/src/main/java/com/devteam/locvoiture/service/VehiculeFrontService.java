package com.devteam.locvoiture.service;

import java.util.List;

import com.devteam.locvoiture.model.Vehicule;

public interface VehiculeFrontService {
List<Vehicule> getVehicules();

Vehicule getVehiculeById(int id);
List<Vehicule> getVehiculeByCritere(String marque,String couleur, String prix, String categorie);
}
