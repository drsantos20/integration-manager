package br.com.dccom.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.dccom.modelo.Beneficiario;
import br.com.dccom.services.PessoaService;

@Controller
public class BeneficiarioController {
	
	@Autowired
	PessoaService dataService;

	@RequestMapping("inserirCliente")
	public ModelAndView getForm(@ModelAttribute("pessoa") Beneficiario pessoa) {
		
		ArrayList<String> tipo = new ArrayList<String>();  
		tipo.add("Residencial");  
		tipo.add("Comercial");  
		
		ArrayList<String> nacionalidade = new ArrayList<String>();
		nacionalidade.add("Brasileira");
		
		ArrayList<String> sexo = new ArrayList<String>();
		sexo.add("Masculino");
		sexo.add("Feminino");
		
		Map<String, Object> model = new HashMap<String, Object>();  
		model.put("tipo", tipo);
		model.put("nacionalidade", nacionalidade);
		model.put("sexo", sexo);
		
		return new ModelAndView("views/userRegister", "model", model);
	}
	
	@RequestMapping("register")
	public ModelAndView registerUser(@ModelAttribute Beneficiario pessoa) {
		dataService.insertRow(pessoa);
		return new ModelAndView("redirect:list");
	}
	
	@RequestMapping("list")
	public ModelAndView getListUser() {
		List pessoaList = dataService.getList();
		return new ModelAndView("views/userList","pessoaList",pessoaList);
	}
	
	@RequestMapping("delete")
	public ModelAndView deleteUser(@RequestParam int id) {
		dataService.deleteRow(id);
		return new ModelAndView("redirect:list");
	}
	
	@RequestMapping("edit")
	public ModelAndView editUser(@RequestParam int id,@ModelAttribute Beneficiario pessoa) {
		Beneficiario pessoaObject = dataService.getRowById(id);
		return new ModelAndView("views/userEdit","pessoaObject",pessoaObject);
	}
	
	@RequestMapping("update")
	public ModelAndView updateUser(@ModelAttribute Beneficiario pessoa) {
		dataService.updateRow(pessoa);
		return new ModelAndView("redirect:list");
	}

}
