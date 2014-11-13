package br.com.dccom.services;

import java.util.List;

import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;

import br.com.dccom.modelo.TipoAtendimento;

public interface TipoAtendimentoService {
	
	public TipoAtendimento create(TipoAtendimento tipoAtendimento);
	public TipoAtendimento delete(int id) throws NotFoundException;
	public List<TipoAtendimento> findAll();
	public TipoAtendimento update(TipoAtendimento tipoAtendimento) throws NotFoundException;
	public TipoAtendimento findById(int id);
}
