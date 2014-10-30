package br.com.dccom.dao;

import java.util.List;

import br.com.dccom.modelo.Profissional;

public interface ProfissionalDao {
	public int insertRow(Profissional profissional);

	public List<Profissional> getList();

	public Profissional getRowById(int id);

	public int updateRow(Profissional profissional);

	public int deleteRow(int id);
	
}
