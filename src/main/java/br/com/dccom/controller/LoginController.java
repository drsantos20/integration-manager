package br.com.dccom.controller;

import org.springframework.stereotype.Controller;

@Controller
public class LoginController {
	
//	@Autowired
//	LoginService loginService;
//	
//	@Autowired
//    @Qualifier("userValidator")
//    private Validator validator;
//
//	
//	@InitBinder
//    private void initBinder(WebDataBinder binder) {
//        binder.setValidator(validator);
//    }
//	
//	@RequestMapping("login")
//	public ModelAndView getForm(@ModelAttribute Usuario usuario) {
//		return new ModelAndView("login/userLogin");
//	}
//	
//	
//	@RequestMapping(value="loginValidation")
//	public String successLogin(
//		Model  model, @Validated Usuario usuario, BindingResult result) {
//		String returnVal = "views/userRegister";
//		Usuario buscarUsuario = loginService.autenticarUsuario(usuario.getEmail(), usuario.getSenha());
//		if(result.hasErrors()) {
//			returnVal = "login/userLogin";
//		} else if(buscarUsuario == null) {
//			model.addAttribute("usrNotFound", "Usuário ou Senha Inválidos!");
//			returnVal = "login/userLogin";
//		} else {
//			returnVal = "redirect:inserirCliente";
//		}
//		return returnVal;
//	}
}
