package br.com.dccom.dao;

import java.util.List;

import br.com.dccom.modelo.TipoAtendimento;

public interface TipoAtendimentoDao {
	
	public int insertRow(TipoAtendimento tipoatendimento);

	public List<TipoAtendimento> getList();

	public int updateRow(TipoAtendimento tipoatendimento);
	
	public TipoAtendimento getRowById(int id);

	public int deleteRow(int id);

}
