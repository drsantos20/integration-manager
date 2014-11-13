package br.com.dccom.services;

import java.util.List;

import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;

import br.com.dccom.modelo.Beneficiario;

public interface BeneficiarioService {
	
	public Beneficiario create(Beneficiario cbos);
	public Beneficiario delete(int id) throws NotFoundException;
	public List<Beneficiario> findAll();
	public Beneficiario update(Beneficiario shop) throws NotFoundException;
	public Beneficiario findById(int id);
}
