package com.devteam.locvoiture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.devteam.locvoiture.service.VehiculeFrontServiceImpl;

@Controller
@RequestMapping("/front")
public class VehiculeFrontController {

	@Autowired
	VehiculeFrontServiceImpl service;

	@GetMapping
	public String index(Model m) {
		m.addAttribute("vehicules", service.getVehicules());
		return "front/index";
	}
	
	@GetMapping("chercher")
	public String ajouter(Model m) {

//		m.addAttribute("vehicule",service.getVehiculeByCritere(marque, couleur, prix, categorie));
		return "/front/index";
	}
}
