package com.devteam.locvoiture.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.devteam.locvoiture.model.Panne;
import com.devteam.locvoiture.service.PanneServiceImpl;


@Controller
@RequestMapping("/")
public class ActionController {
	
	
	
	
	//GESTION DES PANNES
	@Autowired
	private PanneServiceImpl panneService;


	@RequestMapping(value = "/ajoutPanne", method = RequestMethod.GET)

	public String ajouter() {

		return "gestionPannes/ajout";
	}

	// Enregistrement
	@RequestMapping(value = "/ajoutPanne", method = RequestMethod.POST)

	public String ajouter(@ModelAttribute Panne r, BindingResult result) {

		if (result.hasErrors()) {
			System.out.println("erreur:::::: "+result.toString());
			return "gestionPannes/ajout";
		}else {
			panneService.ajouterPanne(r);

			return "redirect:listePannes";
		}
			
		

	}

	// liste panne

	@RequestMapping(value = "/listePannes", method = RequestMethod.GET)

	public String index(Model m) {
		m.addAttribute("pannes", panneService.getPannes());
		return "gestionPannes/listePannes";

	}
	
	
//	suppression
	
	@RequestMapping(value = "/suppressionPanne", method = RequestMethod.GET)
	public String supprimer(@RequestParam String n) {
		
		Panne r= panneService.getPanneById(Integer.parseInt(n));
		
		
		
		
		panneService.delete(r);
		return "redirect:listePannes";
		
	}
	
	
	
	//modification formulaire
	
	@RequestMapping(value = "/modificationPannes", method = RequestMethod.GET)

	public String modifier(Model m, @RequestParam String n ) {
		Panne r= panneService.getPanneById(Long.parseLong(n));
		m.addAttribute("panne", r);
		
		
		return "gestionPannes/listePannes";
	}
	
	
//	traitement de modification
	
	@RequestMapping(value = "/modificationPanne", method = RequestMethod.POST)

	public String modifier(@ModelAttribute Panne r, BindingResult result) {

		if (result.hasErrors()) {
			System.out.println("erreur:::::: "+result.toString());
			return "gestionPannes/ajout";
		}else {
			panneService.ajouterPanne(r);

			return "redirect:listePannes";
		}
			
		

	}
	
	
	
	

}
