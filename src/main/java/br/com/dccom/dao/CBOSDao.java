package br.com.dccom.dao;

import java.util.List;

import br.com.dccom.modelo.CBOS;

public interface CBOSDao {
	
	public int insertRow(CBOS cbos);

	public List<CBOS> getList();

	public int updateRow(CBOS cbos);
	
	public CBOS getRowById(int id);

	public int deleteRow(int id);
	

}
