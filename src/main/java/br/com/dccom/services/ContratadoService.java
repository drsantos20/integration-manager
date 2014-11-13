package br.com.dccom.services;

import java.util.List;

import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;

import br.com.dccom.modelo.Contratado;

public interface ContratadoService {
	
	public Contratado create(Contratado contratado);
	public Contratado delete(int id) throws NotFoundException;
	public List<Contratado> findAll();
	public Contratado update(Contratado shop) throws NotFoundException;
	public Contratado findById(int id);
}
