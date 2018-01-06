package com.devteam.locvoiture.controller;

import java.util.Date;

import javax.sound.midi.Soundbank;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
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

		return "gestionPannes/ajoutPanne";
	}

	// Enregistrement
	@RequestMapping(value = "/ajoutPanne", method = RequestMethod.POST)

	public String ajouter(@ModelAttribute Panne r, BindingResult result,
			@RequestParam("dateP") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) Date datePanne) {
			r.setDatePanne(datePanne);
		if (result.hasErrors()) {
			System.out.println("erreur:::::: "+result.toString());
			return "gestionPannes/ajoutPanne";
		}else {
			panneService.ajouterPanne(r);

			return "redirect:listePannes";
		}
			
		

	}

	// liste pannes

	@RequestMapping(value = "/listePannes", method = RequestMethod.GET)

	public String index(Model m) {
		m.addAttribute("pannes", panneService.getPannes());
		return "gestionPannes/listePannes";

	}
	
	
//	suppression
	
	@RequestMapping(value = "/suppressionPanne", method = RequestMethod.GET)
	public String supprimer(@RequestParam String n) {
		
		Panne r= panneService.getUnePanneById(Integer.parseInt(n));
		
		
		
		
		panneService.delete(r);
		return "redirect:listePannes";
		
	}
	
	
	
	//modification formulaire
	
	@RequestMapping(value = "/modificationPanne", method = RequestMethod.GET)

	public String modifier(Model m, @RequestParam String n ) {
		int id= Integer.parseInt(n);
		System.out.println(id);
		Panne r= panneService.getUnePanneById(id);
		System.out.println(r.toString());
		m.addAttribute("panne", r);
		
		
		return "gestionPannes/modificationPanne";
	}
	
	
//	traitement de modification
	
	@RequestMapping(value = "/modificationPanne", method = RequestMethod.POST)

	public String modifier(@ModelAttribute Panne r, BindingResult result,
			@RequestParam("dateP") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) Date datePanne) {
		r.setDatePanne(datePanne);
		if (result.hasErrors()) {
			System.out.println("erreur:::::: "+result.toString());
			return "gestionPannes/ajoutPanne";
		}else {
			panneService.ajouterPanne(r);

			return "redirect:listePannes";
		}
			
		

	}
	
	
	
	

}
