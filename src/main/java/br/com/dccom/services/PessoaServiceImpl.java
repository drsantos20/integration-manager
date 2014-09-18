package br.com.dccom.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.dao.PessoaDao;
import br.com.dccom.modelo.Pessoa;

public class PessoaServiceImpl implements PessoaService {
	
	@Autowired
	PessoaDao dataDao;

	@Override
	public int insertRow(Pessoa pessoa) {
		return dataDao.insertRow(pessoa);
	}

	@Override
	public List<Pessoa> getList() {
		return dataDao.getList();
	}

	@Override
	public Pessoa getRowById(int id) {
		return dataDao.getRowById(id);
	}

	@Override
	public int updateRow(Pessoa pessoa) {
		return dataDao.updateRow(pessoa);
	}

	@Override
	public int deleteRow(int id) {
		return dataDao.deleteRow(id);
	}

}
