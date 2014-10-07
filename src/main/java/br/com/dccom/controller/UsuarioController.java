package br.com.dccom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import br.com.dccom.services.BeneficiarioService;

@Controller
public class UsuarioController {
	
	@Autowired
	BeneficiarioService dataService;

}
