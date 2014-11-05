package br.com.dccom.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.dccom.modelo.Operadora;
import br.com.dccom.services.OperadoraService;

@Controller
public class OperadoraController {
	
	@Autowired
	OperadoraService dataService;
	
	@RequestMapping("inserirOperadora")
	public ModelAndView getForm(@ModelAttribute("operadora") Operadora operadora) {
		return new ModelAndView("operadora/operadoraRegister");
	}
	
	@RequestMapping("salvarOperadora")
	public ModelAndView registerUser(@ModelAttribute Operadora operadora) {
		dataService.insertRow(operadora);
		return new ModelAndView("redirect:buscarBeneficiario");
	}
	
	@RequestMapping("buscarOperadora")
	public ModelAndView getListUser() {
		List operadoraList = dataService.getList();
		return new ModelAndView("operadora/operadoraList","operadoraList",operadoraList);
	}
	
	@RequestMapping("deleteOperadora")
	public ModelAndView deleteUser(@RequestParam int id) {
		dataService.deleteRow(id);
		return new ModelAndView("redirect:buscarOperadora");
	}
	
	@RequestMapping("updateOperadora")
	public ModelAndView updateUser(@ModelAttribute Operadora operadora) {
		dataService.updateRow(operadora);
		return new ModelAndView("redirect:buscarOperadora");
	}
	
	@RequestMapping("editOperadora")
	public ModelAndView editUser(@RequestParam int id,@ModelAttribute("operadora") Operadora operadora) {
		Operadora operadoraObject = dataService.getRowById(id);
		
		Map<String, Object> model = new HashMap<String, Object>();  
		model.put("operadoraObject", operadoraObject);
			
		return new ModelAndView("operadora/operadoraEdit","model", model);
	}

	
}
