package br.com.dccom.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.neo4j.cypher.internal.compiler.v2_1.ast.rewriters.addUniquenessPredicates;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
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

	@RequestMapping("inserirBeneficiario")
	public ModelAndView getForm(@ModelAttribute("beneficiario") Beneficiario beneficiario) {
		
		
		ArrayList<String> tipo = new ArrayList<String>();  
		tipo.add("Residencial");  
		tipo.add("Comercial");  
		
		ArrayList<String> nacionalidade = new ArrayList<String>();
		nacionalidade.add("Brasileira");
		
		ArrayList<String> sexo = new ArrayList<String>();
		sexo.add("Masculino");
		sexo.add("Feminino");
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		
		
		Map<String, Object> model = new HashMap<String, Object>();  
		model.put("tipo", tipo);
		model.put("nacionalidade", nacionalidade);
		model.put("sexo", sexo);
		model.put("username", username);
		
		
		//logs debug message
		if(logger.isDebugEnabled()){
			logger.debug("getWelcome is executed!");
		}
		
		return new ModelAndView("beneficiario/beneficiarioRegister", "model", model);
	}
	
	@RequestMapping("register")
	public ModelAndView registerUser(@ModelAttribute Beneficiario beneficiario) {
		dataService.insertRow(beneficiario);
		return new ModelAndView("redirect:buscarBeneficiario");
	}
	
	@RequestMapping("buscarBeneficiario")
	public ModelAndView getListUser() {
		List beneficiarioList = dataService.getList();
		return new ModelAndView("beneficiario/beneficiarioList","beneficiarioList",beneficiarioList);
	}
	
	@RequestMapping("delete")
	public ModelAndView deleteUser(@RequestParam int id) {
		dataService.deleteRow(id);
		return new ModelAndView("redirect:buscarBeneficiario");
	}
	
	@RequestMapping("editBeneficiario")
	public ModelAndView editUser(@RequestParam int id,@ModelAttribute("beneficiario") Beneficiario beneficiario) {
		Beneficiario beneficiarioObject = dataService.getRowById(id);
		
		List<Telefone> tipo = new ArrayList<Telefone>();
		tipo.addAll(beneficiarioObject.getTelefone());
		
		
//		Map<String, String> phones = new HashMap<String, String>(); 
//        phones.put("id", beneficiarioObject.getTelefone().get(0).getTipo());  
//        phones.put("id", beneficiarioObject.getTelefone().get(1).getTipo());  
		
		Map<String, Object> model = new HashMap<String, Object>();  
		model.put("tipo", tipo);
		model.put("beneficiarioObject", beneficiarioObject);
			
		return new ModelAndView("beneficiario/beneficiarioEdit","model", model);
	}
	
	@RequestMapping("update")
	public ModelAndView updateUser(@ModelAttribute Beneficiario beneficiario) {
		dataService.updateRow(beneficiario);
		return new ModelAndView("redirect:buscarBeneficiario");
	}

}
