package br.com.dccom.services;

import java.util.List;

import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;

import br.com.dccom.modelo.CBOS;

public interface CBOSService {
	
	public CBOS create(CBOS cbos);
	public CBOS delete(int id) throws NotFoundException;
	public List<CBOS> findAll();
	public CBOS update(CBOS shop) throws NotFoundException;
	public CBOS findById(int id);
}
