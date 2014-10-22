package br.com.dccom.dao;

import java.util.List;

import br.com.dccom.modelo.Beneficiario;

public interface BeneficiarioDao {
	public int insertRow(Beneficiario beneficiario);

	public List<Beneficiario> getList();

	public Beneficiario getRowById(int id);

	public int updateRow(Beneficiario beneficiario);

	public int deleteRow(int id);
	
}
