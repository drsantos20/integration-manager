package br.com.dccom.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.dao.PlanoDao;
import br.com.dccom.modelo.Plano;

public class PlanoServiceImpl implements PlanoService {
	
	@Autowired
	PlanoDao planoDao;

	@Override
	public int insertRow(Plano plano) {
		return planoDao.insertRow(plano);
	}

	@Override
	public List<Plano> getList() {
		return planoDao.getList();
	}

	@Override
	public Plano getRowById(int id) {
		return planoDao.getRowById(id);
	}

	@Override
	public int updateRow(Plano plano) {
		return planoDao.updateRow(plano);
	}

	@Override
	public int deleteRow(int id) {
		return planoDao.deleteRow(id);
	}

}
