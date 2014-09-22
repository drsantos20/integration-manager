package br.com.dccom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.dccom.modelo.Pessoa;

@Controller
public class LoginController {
	
	@RequestMapping("login")
	public ModelAndView getForm(@ModelAttribute Pessoa pessoa) {
		return new ModelAndView("login/userLogin");
	}
	
	@RequestMapping(value="loginValidation", method=RequestMethod.GET)
    public ModelAndView successLogin() {
		System.out.println("login");
		//TODO implementar logica de validação de usuário aqui
		ModelMap model = new ModelMap();
		if(model != null) {
			model.addAttribute("result", "success");
		}
		
		
        return new ModelAndView("principal/principal");
    }

}
