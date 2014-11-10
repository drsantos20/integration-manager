package br.com.dccom.services;

import java.util.List;

import br.com.dccom.modelo.TipoAtendimento;

public interface TipoAtendimentoService {
	public int insertRow(TipoAtendimento tipoatendimento);

	public List<TipoAtendimento> getList();

	public TipoAtendimento getRowById(int id);

	public int updateRow(TipoAtendimento tipoatendimento);
	
	public int deleteRow(int id);
}
