package br.com.dccom.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import br.com.dccom.modelo.Telefone;

public interface TelefoneRepository extends CrudRepository<Telefone, Integer> {
	
	List<Telefone> findByBeneficiarioId(int id);

}
