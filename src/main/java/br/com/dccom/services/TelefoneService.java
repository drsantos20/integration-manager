package br.com.dccom.services;

import java.util.List;

import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;

import br.com.dccom.modelo.Telefone;

public interface TelefoneService {
	
	public Telefone create(Telefone telefone);
	public Telefone delete(int id) throws NotFoundException;
	public List<Telefone> findAll();
	public Telefone update(Telefone telefone) throws NotFoundException;
	public Telefone findById(int id);
	public List<Telefone> findByBeneficiarioId(int id);
}
