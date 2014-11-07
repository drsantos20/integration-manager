package br.com.dccom.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.dccom.modelo.Guia;

@Controller
public class GuiaController {
	
	@RequestMapping("inserirGuia")
	public ModelAndView getForm(@ModelAttribute("guia") Guia guia) {
		
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
		
		return new ModelAndView("guia/guiaRegister", "model", model);
	}

}
