package br.com.dccom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.dccom.modelo.Pessoa;

@Controller
public class InitialController {
	
	@RequestMapping("index")
	public ModelAndView getForm(@ModelAttribute Pessoa pessoa) {
		return new ModelAndView("principal/principal");
	}

}
