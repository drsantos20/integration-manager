package br.com.dccom.services;

import java.util.List;

import br.com.dccom.modelo.Plano;

public interface PlanoService {
	public int insertRow(Plano plano);

	public List<Plano> getList();

	public Plano getRowById(int id);

	public int updateRow(Plano plano);

	public int deleteRow(int id);

}
