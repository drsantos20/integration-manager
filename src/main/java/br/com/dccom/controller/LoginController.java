package br.com.dccom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.dccom.modelo.Usuario;
import br.com.dccom.services.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	LoginService loginService;
	
	@Autowired
    @Qualifier("userValidator")
    private Validator validator;

	
	@InitBinder
    private void initBinder(WebDataBinder binder) {
        binder.setValidator(validator);
    }
	
	@RequestMapping("login")
	public ModelAndView getForm(@ModelAttribute Usuario usuario) {
		return new ModelAndView("login/userLogin");
	}
	
	
	@RequestMapping(value="loginValidation")
	public String successLogin(
		Model  model, @Validated Usuario usuario, BindingResult result) {
		String returnVal = "views/userRegister";
		if(result.hasErrors()) {
			returnVal = "login/userLogin";
		} else {
			model.addAttribute("login", usuario);
		}		
		return returnVal;
	}
}
