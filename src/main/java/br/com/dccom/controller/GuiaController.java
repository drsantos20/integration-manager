package br.com.dccom.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.dccom.modelo.CBOS;
import br.com.dccom.modelo.Guia;
import br.com.dccom.services.CBOSService;

@Controller
public class GuiaController {
	
	@Autowired
	CBOSService cbossDataService;
	
	@RequestMapping("inserirGuia")
	public ModelAndView getForm(@ModelAttribute("guia") Guia guia) {
		
		List<CBOS> cboss = cbossDataService.getList();
		Map<String, Object> model = new HashMap<String, Object>();  
		model.put("cboss", cboss);
		return new ModelAndView("guia/guiaRegister", "model", model);
	}

}
