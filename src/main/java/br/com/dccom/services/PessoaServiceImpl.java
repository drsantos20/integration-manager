package br.com.dccom.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.dao.PessoaDao;
import br.com.dccom.modelo.Beneficiario;

public class PessoaServiceImpl implements PessoaService {
	
	@Autowired
	PessoaDao dataDao;

	@Override
	public int insertRow(Beneficiario pessoa) {
		return dataDao.insertRow(pessoa);
	}

	@Override
	public List<Beneficiario> getList() {
		return dataDao.getList();
	}

	@Override
	public Beneficiario getRowById(int id) {
		return dataDao.getRowById(id);
	}

	@Override
	public int updateRow(Beneficiario pessoa) {
		return dataDao.updateRow(pessoa);
	}

	@Override
	public int deleteRow(int id) {
		return dataDao.deleteRow(id);
	}

}
