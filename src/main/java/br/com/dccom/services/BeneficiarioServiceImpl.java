package br.com.dccom.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.dao.BeneficiarioDao;
import br.com.dccom.modelo.Beneficiario;

public class BeneficiarioServiceImpl implements BeneficiarioService {
	
	@Autowired
	BeneficiarioDao dataDao;

	@Override
	public int insertRow(Beneficiario beneficiario) {
		return dataDao.insertRow(beneficiario);
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
	public int updateRow(Beneficiario beneficiario) {
		return dataDao.updateRow(beneficiario);
	}

	@Override
	public int deleteRow(int id) {
		return dataDao.deleteRow(id);
	}

}
