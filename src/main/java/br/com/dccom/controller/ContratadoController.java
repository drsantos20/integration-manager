package br.com.dccom.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.dccom.modelo.Beneficiario;
import br.com.dccom.modelo.Contratado;
import br.com.dccom.modelo.Telefone;
import br.com.dccom.services.ContratadoService;

@Controller
public class ContratadoController {
	
	
	@Autowired
	ContratadoService dataService;
	
	@RequestMapping("inserirContratado")
	public ModelAndView getForm(@ModelAttribute("contratado") Contratado contratado) {
		return new ModelAndView("contratado/contratadoRegister");
	}
	
	@RequestMapping("salvarContratado")
	public ModelAndView registerUser(@ModelAttribute Contratado contratado) {
		dataService.insertRow(contratado);
		return new ModelAndView("redirect:buscarBeneficiario");
	}
	
	@RequestMapping("buscarContratado")
	public ModelAndView getListUser() {
		List contratadoList = dataService.getList();
		return new ModelAndView("contratado/contratadoList","contratadoList",contratadoList);
	}
	
	@RequestMapping("deleteContratado")
	public ModelAndView deleteUser(@RequestParam int id) {
		dataService.deleteRow(id);
		return new ModelAndView("redirect:buscarBeneficiario");
	}
	
	@RequestMapping("updateContratado")
	public ModelAndView updateUser(@ModelAttribute Contratado contratado) {
		dataService.updateRow(contratado);
		return new ModelAndView("redirect:buscarContratado");
	}
	
	@RequestMapping("editContratado")
	public ModelAndView editUser(@RequestParam int id,@ModelAttribute("contratado") Contratado contratado) {
		Contratado contratadoObject = dataService.getRowById(id);
		
		Map<String, Object> model = new HashMap<String, Object>();  
		model.put("contratadoObject", contratadoObject);
			
		return new ModelAndView("contratado/contratadoEdit","model", model);
	}
	

}
