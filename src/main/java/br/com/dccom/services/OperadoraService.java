package br.com.dccom.services;

import java.util.List;

import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;

import br.com.dccom.modelo.Operadora;

public interface OperadoraService {
	
	public Operadora create(Operadora operadora);
	public Operadora delete(int id) throws NotFoundException;
	public List<Operadora> findAll();
	public Operadora update(Operadora operadora) throws NotFoundException;
	public Operadora findById(int id);
}
