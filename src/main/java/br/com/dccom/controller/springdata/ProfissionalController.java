package br.com.dccom.controller.springdata;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.dccom.modelo.CBOS;
import br.com.dccom.modelo.Profissional;
import br.com.dccom.repository.ProfissionalRepository;

@Controller
public class ProfissionalController {
	
	@Autowired
	ProfissionalService dataService;
	
	@Autowired
	CBOSService cbossDataService;
	
	@RequestMapping("inserirProfissional")
	public ModelAndView getForm(@ModelAttribute("profissional") Profissional profissional) {
		
		List<CBOS> cboss = cbossDataService.findAll();
		Map<String, Object> model = new HashMap<String, Object>();  
		
		model.put("cboss", cboss);
		return new ModelAndView("profissional/profissionalRegister", "model", model);
	}
	
	@RequestMapping("salvarProfissional")
	public ModelAndView registerUser(@ModelAttribute Profissional profissional) {
		dataService.create(profissional);
		return new ModelAndView("redirect:buscarProfissional");
	}
	
	@RequestMapping("buscarProfissional")
	public ModelAndView getListUser() {
		List profissionalList = dataService.findAll();
		return new ModelAndView("profissional/profissionalList","profissionalList",profissionalList);
	}
	
	@RequestMapping("deleteProfissional")
	public ModelAndView deleteUser(@RequestParam int id) throws NotFoundException {
		dataService.delete(id);
		return new ModelAndView("redirect:buscarProfissional");
	}
	
	@RequestMapping("updateProfissional")
	public ModelAndView updateUser(@ModelAttribute Profissional profissional) throws NotFoundException {
		dataService.update(profissional);
		return new ModelAndView("redirect:buscarProfissional");
	}
	
	@RequestMapping("editProfissional")
	public ModelAndView editUser(@RequestParam int id,@ModelAttribute("profissional") Profissional profissional) {
		Profissional profissionalObject = dataService.findById(id);
		List<CBOS> listCbos = cbossDataService.findAll();
		
		Map<String, Object> model = new HashMap<String, Object>();  
		model.put("listCbos", listCbos);
		model.put("profissionalObject", profissionalObject);
			
		return new ModelAndView("profissional/profissionalEdit","model", model);
	}

}
