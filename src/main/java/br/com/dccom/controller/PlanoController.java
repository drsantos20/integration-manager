package br.com.dccom.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.dccom.modelo.Plano;
import br.com.dccom.services.PlanoService;

@Controller
public class PlanoController {
	
	@Autowired
	PlanoService dataService;

	@RequestMapping("formPlano")
	public ModelAndView getFormPlano(@ModelAttribute Plano plano) {
		return new ModelAndView("plano/formPlano");
	}
	
	@RequestMapping("registerPlano")
	public ModelAndView registerPlano(@ModelAttribute Plano plano) {
		dataService.insertRow(plano);
		return new ModelAndView("redirect:listPlano");
	}
	
	@RequestMapping("listPlano")
	public ModelAndView getListPlano() {
		List planoList = dataService.getList();
		return new ModelAndView("plano/listPlano","planoList",planoList);
	}
	
	@RequestMapping("deletePlano")
	public ModelAndView deletePlano(@RequestParam int id) {
		dataService.deleteRow(id);
		return new ModelAndView("redirect:listPlano");
	}
	
	@RequestMapping("editPlano")
	public ModelAndView editPlano(@RequestParam int id,@ModelAttribute Plano plano) {
		Plano planoObject = dataService.getRowById(id);
		return new ModelAndView("plano/editPlano","planoObject",planoObject);
	}
	
	@RequestMapping("updatePlano")
	public ModelAndView updatePlano(@ModelAttribute Plano plano) {
		dataService.updateRow(plano);
		return new ModelAndView("redirect:listPlano");
	}
}
