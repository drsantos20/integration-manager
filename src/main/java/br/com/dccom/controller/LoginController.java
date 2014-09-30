package br.com.dccom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.dccom.modelo.Pessoa;
import br.com.dccom.modelo.Usuario;
import br.com.dccom.services.LoginService;
import br.com.dccom.services.PessoaService;

@Controller
public class LoginController {
	
	@Autowired
	LoginService loginService;
	
	@RequestMapping("login")
	public ModelAndView getForm(@ModelAttribute Usuario usuario) {
		
		return new ModelAndView("login/userLogin");
	}
	
	@RequestMapping(value="loginValidation")
    public ModelAndView successLogin(@ModelAttribute Usuario usuario) {
		Usuario buscarUsuario = loginService.autenticarUsuario(usuario.getEmail(), usuario.getSenha());
		if(buscarUsuario != null) {
			return new ModelAndView("views/userRegister");
		}
		
		return new ModelAndView("login/userLogin");
        
    }

}
