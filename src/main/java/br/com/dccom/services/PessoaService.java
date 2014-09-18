package br.com.dccom.services;

import java.util.List;

import br.com.dccom.modelo.Pessoa;

public interface PessoaService {
	public int insertRow(Pessoa pessoa);

	public List<Pessoa> getList();

	public Pessoa getRowById(int id);

	public int updateRow(Pessoa pessoa);

	public int deleteRow(int id);

}
