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
import br.com.dccom.modelo.TipoAtendimento;
import br.com.dccom.services.CBOSService;
import br.com.dccom.services.GuiaService;
import br.com.dccom.services.TipoAtendimentoService;

@Controller
public class GuiaController {
	
	@Autowired
	GuiaService guiaDataService;
	
	@Autowired
	CBOSService cbossDataService;
	
	@Autowired
	TipoAtendimentoService tipoAtendimento;
	
	@RequestMapping("inserirGuia")
	public ModelAndView getForm(@ModelAttribute("guia") Guia guia) {
		
		Map<String, Object> model = new HashMap<String, Object>();  
		List<CBOS> cboss = cbossDataService.findAll();
		List<TipoAtendimento> tipoAtendimentos = tipoAtendimento.findAll();
		
		model.put("cboss", cboss);
		model.put("tipoAtendimentos", tipoAtendimentos);
		return new ModelAndView("guia/guiaRegister", "model", model);
	}
	
	@RequestMapping("registerGuia")
	public ModelAndView registerUser(@ModelAttribute Guia guia) {
		guiaDataService.create(guia);
		return new ModelAndView("redirect:buscarBeneficiario");
	}

}
