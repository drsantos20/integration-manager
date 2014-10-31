package br.com.dccom.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.dccom.modelo.CBOS;
import br.com.dccom.modelo.Profissional;
import br.com.dccom.services.CBOSService;
import br.com.dccom.services.ProfissionalService;

@Controller
public class ProfissionalController {
	
	@Autowired
	ProfissionalService dataService;
	
	@Autowired
	CBOSService cbossDataService;
	
	@RequestMapping("inserirProfissional")
	public ModelAndView getForm(@ModelAttribute("profissional") Profissional profissional) {
		
		List<CBOS> cboss = cbossDataService.getList();
		Map<String, Object> model = new HashMap<String, Object>();  
		
		model.put("cboss", cboss);
		return new ModelAndView("profissional/profissionalRegister", "model", model);
	}
	
	@RequestMapping("salvarProfissional")
	public ModelAndView registerUser(@ModelAttribute Profissional profissional) {
		dataService.insertRow(profissional);
		return new ModelAndView("redirect:buscarProfissional");
	}
	
	@RequestMapping("buscarProfissional")
	public ModelAndView getListUser() {
		List profissionalList = dataService.getList();
		return new ModelAndView("profissional/profissionalList","profissionalList",profissionalList);
	}
	
	@RequestMapping("deleteProfissional")
	public ModelAndView deleteUser(@RequestParam int id) {
		dataService.deleteRow(id);
		return new ModelAndView("redirect:buscarProfissional");
	}
	
	@RequestMapping("updateProfissional")
	public ModelAndView updateUser(@ModelAttribute Profissional profissional) {
		dataService.updateRow(profissional);
		return new ModelAndView("redirect:buscarProfissional");
	}
	
	@RequestMapping("editProfissional")
	public ModelAndView editUser(@RequestParam int id,@ModelAttribute("profissional") Profissional profissional) {
		Profissional profissionalObject = dataService.getRowById(id);
		List<CBOS> listCbos = cbossDataService.getList();
		
		Map<String, Object> model = new HashMap<String, Object>();  
		model.put("listCbos", listCbos);
		model.put("profissionalObject", profissionalObject);
			
		return new ModelAndView("profissional/profissionalEdit","model", model);
	}

}
