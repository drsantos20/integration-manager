package br.com.dccom.repository;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.data.repository.CrudRepository;

import br.com.dccom.modelo.Profissional;

public class ProfissionalTest {
	
	private static CrudRepository repository;

	public static void main(String[] args) {
		AbstractApplicationContext context = new ClassPathXmlApplicationContext("spring-config.xml");
		repository = context.getBean(ProfissionalRepository.class);
		
		createProfissional(05, "Spring Data Update Com projeto", "teste", "teste", "a", "b", "c", "d", "e", "f");

	}

	private static void createProfissional(int i, String string,
			String string2, String string3, String string4, String string5,
			String string6, String string7, String string8, String string9) {
		Profissional profissional = new Profissional();
		
		profissional.setId(i);
		profissional.setNomeProfissional(string);
		profissional.setCaraterSolicitacao(string2);
		profissional.setDataSolicitacao(string3);
		profissional.setNumeroConselhoProfissional(string4);
		profissional.setUf(string5);
		profissional.setIndicacaoClinica(string6);
		profissional.setCbos(string7);
		profissional.setConselhoProfissional(string6);
		repository.save(profissional);
		
	}

}
