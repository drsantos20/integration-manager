package br.com.dccom.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;
import org.springframework.transaction.annotation.Transactional;

import br.com.dccom.modelo.CBOS;
import br.com.dccom.repository.CBOSRepository;

public class CBOSServiceImpl implements CBOSService {

	@Resource
	private CBOSRepository  cbosRepository;

	@Override
	@Transactional
	public CBOS create(CBOS cbos) {
		CBOS createdCBOS = cbos;
		return cbosRepository.save(createdCBOS);
//		return dataDao.insertRow(cbos);
	}
	
	@Transactional
	@Override
    public List<CBOS> findAll() {
        return (List<CBOS>) cbosRepository.findAll();
    }


	@Override
	public CBOS delete(int id) throws NotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional(/*rollbackFor=ShopNotFound.class*/)
	public CBOS update(CBOS cbos) throws NotFoundException {
		CBOS updatedCBOS = cbosRepository.findOne(cbos.getId());

		if (updatedCBOS == null)
			throw new NotFoundException();
		
		updatedCBOS.setDescricao(cbos.getDescricao());
		updatedCBOS.setCodigo(cbos.getCodigo());

		return updatedCBOS;
	}

	@Override
	public CBOS findById(int id) {
		return cbosRepository.findOne(id);
	}

	
	
	
}
