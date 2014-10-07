package br.com.dccom.services;

import java.util.List;

import br.com.dccom.modelo.Beneficiario;

public interface BeneficiarioService {
	public int insertRow(Beneficiario beneficiario);

	public List<Beneficiario> getList();

	public Beneficiario getRowById(int id);

	public int updateRow(Beneficiario beneficiario);

	public int deleteRow(int id);

}
