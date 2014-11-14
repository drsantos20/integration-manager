package br.com.dccom.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.dccom.modelo.Beneficiario;
import br.com.dccom.modelo.Telefone;
import br.com.dccom.services.BeneficiarioService;
import br.com.dccom.services.TelefoneService;

@Controller
public class BeneficiarioController {
	
	@Autowired
	BeneficiarioService beneficiarioDataService;
	
	@Autowired
	TelefoneService telefoneDataService;
	
	private static final Logger logger = Logger.getLogger(BeneficiarioController.class);

	@RequestMapping("inserirBeneficiario")
	public ModelAndView getForm(@ModelAttribute("beneficiario") Beneficiario beneficiario) {
		
		ArrayList<String> tipo = new ArrayList<String>();  
		tipo.add("Residencial");  
		tipo.add("Comercial");  
		
		ArrayList<String> sexo = new ArrayList<String>();
		sexo.add("Masculino");
		sexo.add("Feminino");
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String username = authentication.getName();
		
		Map<String, Object> model = new HashMap<String, Object>();  
		model.put("tipo", tipo);
		model.put("sexo", sexo);
		model.put("username", username);
		
		
		//logs debug message
		if(logger.isDebugEnabled()){
			logger.debug("getWelcome is executed!");
		}
		
		return new ModelAndView("beneficiario/beneficiarioRegister", "model", model);
	}
	
	
	@RequestMapping("beneficiarioGerenciar")
	public ModelAndView gerenciarBeneficiario(@ModelAttribute Beneficiario beneficiario) {
		return new ModelAndView("beneficiario/beneficiarioGerenciar");
	}
	
	@RequestMapping("register")
	public ModelAndView registerUser(@ModelAttribute Beneficiario beneficiario) {
		beneficiarioDataService.create(beneficiario);
		return new ModelAndView("redirect:buscarBeneficiario");
	}
	
	@RequestMapping("buscarBeneficiario")
	public ModelAndView getListUser() {
		List beneficiarioList = beneficiarioDataService.findAll();
		return new ModelAndView("beneficiario/beneficiarioList","beneficiarioList",beneficiarioList);
	}
	
	@RequestMapping("delete")
	public ModelAndView deleteUser(@RequestParam int id) throws NotFoundException {
		beneficiarioDataService.delete(id);
		return new ModelAndView("redirect:buscarBeneficiario");
	}
	
	@RequestMapping("editBeneficiario")
	public ModelAndView editUser(@RequestParam int id,@ModelAttribute("beneficiario") Beneficiario beneficiario) {
		Beneficiario beneficiarioObject = beneficiarioDataService.findById(id);
		
		List<Telefone> tipo = new ArrayList<Telefone>();
		tipo.addAll(telefoneDataService.findByBeneficiarioId(beneficiarioObject.getId()));
		beneficiarioObject.setTelefone(tipo);
		
		ArrayList<String> tipoTelefone = new ArrayList<String>();  
		tipoTelefone.add("Residencial");  
		tipoTelefone.add("Comercial");  
		
		Map<String, Object> model = new HashMap<String, Object>();  
		model.put("tipoTelefone", tipoTelefone);
		model.put("beneficiarioObject", beneficiarioObject);
			
		return new ModelAndView("beneficiario/beneficiarioEdit","model", model);
	}
	
	@RequestMapping("update")
	public ModelAndView updateUser(@ModelAttribute Beneficiario beneficiario) throws NotFoundException {
		beneficiarioDataService.update(beneficiario);
		return new ModelAndView("redirect:buscarBeneficiario");
	}

}
