package br.com.dccom.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import br.com.dccom.services.PessoaService;

@Controller
public class UsuarioController {
	
	@Autowired
	PessoaService dataService;

}
