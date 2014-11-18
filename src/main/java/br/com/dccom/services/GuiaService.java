package br.com.dccom.services;

import java.util.List;

import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;

import br.com.dccom.modelo.Guia;

public interface GuiaService {
	
	public Guia create(Guia guia);
	public Guia delete(int id) throws NotFoundException;
	public List<Guia> findAll();
	public Guia update(Guia guia) throws NotFoundException;
	public Guia findById(int id);
}
