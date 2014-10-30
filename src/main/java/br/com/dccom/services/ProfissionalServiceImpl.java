package br.com.dccom.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.dao.ProfissionalDao;
import br.com.dccom.modelo.Profissional;

public class ProfissionalServiceImpl implements ProfissionalService {
	
	@Autowired
	ProfissionalDao dataDao;

	@Override
	public int insertRow(Profissional profissional) {
		return dataDao.insertRow(profissional);
	}

	@Override
	public List<Profissional> getList() {
		return dataDao.getList();
	}

	@Override
	public Profissional getRowById(int id) {
		return dataDao.getRowById(id);
	}

	@Override
	public int updateRow(Profissional profissional) {
		return dataDao.updateRow(profissional);
	}

	@Override
	public int deleteRow(int id) {
		return dataDao.deleteRow(id);
	}
}
