package br.com.dccom.dao;

import java.util.List;

import br.com.dccom.modelo.Contratado;

public interface ContratadoDao {
	public int insertRow(Contratado contratado);

	public List<Contratado> getList();

	public Contratado getRowById(int id);

	public int updateRow(Contratado contratado);

	public int deleteRow(int id);
	
}
