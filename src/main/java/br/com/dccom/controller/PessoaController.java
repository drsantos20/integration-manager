package br.com.dccom.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.dccom.modelo.Pessoa;
import br.com.dccom.services.PessoaService;

@Controller
public class PessoaController {
	
	@Autowired
	PessoaService dataService;

	@RequestMapping("form")
	public ModelAndView getForm(@ModelAttribute Pessoa pessoa) {
		return new ModelAndView("user/form");
	}
	
	@RequestMapping("register")
	public ModelAndView registerUser(@ModelAttribute Pessoa pessoa) {
		dataService.insertRow(pessoa);
		return new ModelAndView("redirect:list");
	}
	
	@RequestMapping("list")
	public ModelAndView getListUser() {
		List pessoaList = dataService.getList();
		return new ModelAndView("user/list","pessoaList",pessoaList);
	}
	
	@RequestMapping("delete")
	public ModelAndView deleteUser(@RequestParam int id) {
		dataService.deleteRow(id);
		return new ModelAndView("redirect:list");
	}
	
	@RequestMapping("edit")
	public ModelAndView editUser(@RequestParam int id,@ModelAttribute Pessoa pessoa) {
		Pessoa pessoaObject = dataService.getRowById(id);
		return new ModelAndView("user/edit","pessoaObject",pessoaObject);
	}
	
	@RequestMapping("update")
	public ModelAndView updateUser(@ModelAttribute Pessoa pessoa) {
		dataService.updateRow(pessoa);
		return new ModelAndView("redirect:list");
	}

}
