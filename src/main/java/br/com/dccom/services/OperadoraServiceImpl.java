package br.com.dccom.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.dao.OperadoraDao;
import br.com.dccom.modelo.Operadora;

public class OperadoraServiceImpl implements OperadoraService {
	
	@Autowired
	OperadoraDao operadoraDao;

	@Override
	public int insertRow(Operadora operadora) {
		return operadoraDao.insertRow(operadora);
	}

	@Override
	public List<Operadora> getList() {
		return operadoraDao.getList();
	}

	@Override
	public Operadora getRowById(int id) {
		return operadoraDao.getRowById(id);
	}

	@Override
	public int updateRow(Operadora operadora) {
		return operadoraDao.updateRow(operadora);
	}

	@Override
	public int deleteRow(int id) {
		return operadoraDao.deleteRow(id);
	}

}
