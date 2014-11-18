package br.com.dccom.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;
import org.springframework.transaction.annotation.Transactional;

import br.com.dccom.modelo.Guia;
import br.com.dccom.repository.GuiaRepository;

public class GuiaServiceImpl implements GuiaService {

	@Resource
	private GuiaRepository  guiaRepository;

	@Override
	@Transactional
	public Guia create(Guia guia) {
		Guia createdGuia = guia;
		return guiaRepository.save(createdGuia);
	}
	
	@Transactional
	@Override
    public List<Guia> findAll() {
        return (List<Guia>) guiaRepository.findAll();
    }


	@Override
	public Guia delete(int id) throws NotFoundException {
		guiaRepository.delete(id);
		return null;
	}

	@Override
	@Transactional(/*rollbackFor=ShopNotFound.class*/)
	public Guia update(Guia guia) throws NotFoundException {
		Guia updatedGuia = guiaRepository.findOne(guia.getId());

		if (updatedGuia == null)
			throw new NotFoundException();
		
//		updatedGuia.setAtivo(guia.getAtivo());
//		updatedGuia.setGuia(guia.getGuia());
//		updatedGuia.setNome(guia.getNome());
//		updatedGuia.setRegistro_ans(guia.getRegistro_ans());
		
		guiaRepository.save(updatedGuia);
		return updatedGuia;
	}

	@Override
	public Guia findById(int id) {
		return guiaRepository.findOne(id);
	}
	
}
