package br.com.dccom.services;

import java.util.List;

import br.com.dccom.modelo.Operadora;

public interface OperadoraService {
	public int insertRow(Operadora operadora);

	public List<Operadora> getList();

	public Operadora getRowById(int id);

	public int updateRow(Operadora operadora);

	public int deleteRow(int id);

}
