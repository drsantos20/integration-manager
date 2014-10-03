package br.com.dccom.services;

import java.util.List;

import br.com.dccom.modelo.Beneficiario;

public interface PessoaService {
	public int insertRow(Beneficiario pessoa);

	public List<Beneficiario> getList();

	public Beneficiario getRowById(int id);

	public int updateRow(Beneficiario pessoa);

	public int deleteRow(int id);

}
