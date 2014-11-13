package br.com.dccom.services;

import java.util.List;

import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;

import br.com.dccom.modelo.Profissional;

public interface ProfissionalService {
//	public int insertRow(Profissional profissional);
//
//	public List<Profissional> getList();
//
//	public Profissional getRowById(int id);
//
//	public int updateRow(Profissional profissional);
//
//	public int deleteRow(int id);
	
	public Profissional create(Profissional profissional);
	public Profissional delete(int id) throws NotFoundException;
	public List<Profissional> findAll();
	public Profissional update(Profissional shop) throws NotFoundException;
	public Profissional findById(int id);
}
