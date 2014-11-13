package br.com.dccom.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;
import org.springframework.transaction.annotation.Transactional;

import br.com.dccom.modelo.Operadora;
import br.com.dccom.repository.OperadoraRepository;

public class OperadoraServiceImpl implements OperadoraService {

	@Resource
	private OperadoraRepository  operadoraRepository;

	@Override
	@Transactional
	public Operadora create(Operadora operadora) {
		Operadora createdOperadora = operadora;
		return operadoraRepository.save(createdOperadora);
	}
	
	@Transactional
	@Override
    public List<Operadora> findAll() {
        return (List<Operadora>) operadoraRepository.findAll();
    }


	@Override
	public Operadora delete(int id) throws NotFoundException {
		operadoraRepository.delete(id);
		return null;
	}

	@Override
	@Transactional(/*rollbackFor=ShopNotFound.class*/)
	public Operadora update(Operadora operadora) throws NotFoundException {
		Operadora updatedOperadora = operadoraRepository.findOne(operadora.getId());

		if (updatedOperadora == null)
			throw new NotFoundException();
		
		updatedOperadora.setAtivo(operadora.getAtivo());
		updatedOperadora.setGuia(operadora.getGuia());
		updatedOperadora.setNome(operadora.getNome());
		updatedOperadora.setRegistro_ans(operadora.getRegistro_ans());
		
		operadoraRepository.save(updatedOperadora);
		return updatedOperadora;
	}

	@Override
	public Operadora findById(int id) {
		return operadoraRepository.findOne(id);
	}
	
}
