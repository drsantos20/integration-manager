package br.com.dccom.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.dao.CBOSDao;
import br.com.dccom.modelo.CBOS;

public class CBOSServiceImpl implements CBOSService {
	
	@Autowired
	CBOSDao dataDao;

	@Override
	public int insertRow(CBOS cbos) {
		return dataDao.insertRow(cbos);
	}

	@Override
	public List<CBOS> getList() {
		return dataDao.getList();
	}

	@Override
	public CBOS getRowById(int id) {
		return dataDao.getRowById(id);
	}

	@Override
	public int updateRow(CBOS profissional) {
		return dataDao.updateRow(profissional);
	}

	@Override
	public int deleteRow(int id) {
		return dataDao.deleteRow(id);
	}
}
