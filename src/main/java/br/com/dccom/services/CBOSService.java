package br.com.dccom.services;

import java.util.List;

import br.com.dccom.modelo.CBOS;

public interface CBOSService {
	public int insertRow(CBOS cbos);

	public List<CBOS> getList();

	public CBOS getRowById(int id);

	public int updateRow(CBOS cbos);
	
	public int deleteRow(int id);
}
