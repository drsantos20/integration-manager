package br.com.dccom.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.dao.TipoAtendimentoDao;
import br.com.dccom.modelo.TipoAtendimento;

public class TipoAtendimentoServiceImpl implements TipoAtendimentoService {
	
	@Autowired
	TipoAtendimentoDao dataDao;

	@Override
	public int insertRow(TipoAtendimento tipoatendimento) {
		return dataDao.insertRow(tipoatendimento);
	}

	@Override
	public List<TipoAtendimento> getList() {
		return dataDao.getList();
	}

	@Override
	public TipoAtendimento getRowById(int id) {
		return dataDao.getRowById(id);
	}

	@Override
	public int updateRow(TipoAtendimento profissional) {
		return dataDao.updateRow(profissional);
	}

	@Override
	public int deleteRow(int id) {
		return dataDao.deleteRow(id);
	}
}
