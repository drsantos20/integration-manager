package br.com.dccom.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.dccom.modelo.Beneficiario;
import br.com.dccom.modelo.Telefone;
import br.com.dccom.services.BeneficiarioService;

@Controller
public class BeneficiarioController {
	
	@Autowired
	BeneficiarioService dataService;
	
	private static final Logger logger = Logger.getLogger(BeneficiarioController.class);

	@RequestMapping("inserirCliente")
	public ModelAndView getForm(@ModelAttribute("beneficiario") Beneficiario beneficiario) {
		
		
		ArrayList<String> tipo = new ArrayList<String>();  
		tipo.add("Residencial");  
		tipo.add("Comercial");  
		
		ArrayList<String> nacionalidade = new ArrayList<String>();
		nacionalidade.add("Brasileira");
		
		ArrayList<String> sexo = new ArrayList<String>();
		sexo.add("Masculino");
		sexo.add("Feminino");
		
		Map<String, Object> model = new HashMap<String, Object>();  
		model.put("tipo", tipo);
		model.put("nacionalidade", nacionalidade);
		model.put("sexo", sexo);
		
		
		//logs debug message
		if(logger.isDebugEnabled()){
			logger.debug("getWelcome is executed!");
		}
 
//		//logs exception
//		logger.error("This is Error message", new Exception("Testing"));
		
		return new ModelAndView("views/userRegister", "model", model);
	}
	
	@RequestMapping("register")
	public ModelAndView registerUser(@ModelAttribute Beneficiario beneficiario) {
		dataService.insertRow(beneficiario);
		return new ModelAndView("redirect:list");
	}
	
	@RequestMapping("list")
	public ModelAndView getListUser() {
		List beneficiarioList = dataService.getList();
		return new ModelAndView("views/userList","beneficiarioList",beneficiarioList);
	}
	
	@RequestMapping("delete")
	public ModelAndView deleteUser(@RequestParam int id) {
		dataService.deleteRow(id);
		return new ModelAndView("redirect:list");
	}
	
	@RequestMapping("edit")
	public ModelAndView editUser(@RequestParam int id,@ModelAttribute("beneficiario") Beneficiario beneficiario) {
		Beneficiario beneficiarioObject = dataService.getRowById(id);
		
//		beneficiarioObject.setTelefone(new ArrayList<Telefone>());
//		beneficiarioObject.getTelefone().add("777777777");
//		beneficiarioObject.getTelefone().add("999999999");
//		beneficiarioObject.getTelefone().add("555555555");
		
		ArrayList<String> tipo = new ArrayList<String>();  
		tipo.add("Residencial");  
		tipo.add("Comercial");  
		
		Map<String, Object> model = new HashMap<String, Object>();  
		model.put("tipo", tipo);
		model.put("beneficiarioObject", beneficiarioObject);
			
		return new ModelAndView("views/userEdit","model", model);
	}
	
	@RequestMapping("update")
	public ModelAndView updateUser(@ModelAttribute Beneficiario beneficiario) {
		dataService.updateRow(beneficiario);
		return new ModelAndView("redirect:list");
	}

}
