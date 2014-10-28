package br.com.dccom.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.dao.ContratadoDao;
import br.com.dccom.modelo.Contratado;

public class ContratadoServiceImpl implements ContratadoService {
	
	@Autowired
	ContratadoDao dataDao;

	@Override
	public int insertRow(Contratado contratado) {
		return dataDao.insertRow(contratado);
	}

	@Override
	public List<Contratado> getList() {
		return dataDao.getList();
	}

	@Override
	public Contratado getRowById(int id) {
		return dataDao.getRowById(id);
	}

	@Override
	public int updateRow(Contratado contratado) {
		return dataDao.updateRow(contratado);
	}

	@Override
	public int deleteRow(int id) {
		return dataDao.deleteRow(id);
	}
}
