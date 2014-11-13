package br.com.dccom.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;
import org.springframework.transaction.annotation.Transactional;

import br.com.dccom.modelo.Contratado;
import br.com.dccom.repository.ContratadoRepository;

public class ContratadoServiceImpl implements ContratadoService {

	@Resource
	private ContratadoRepository  contratadoRepository;

	@Override
	@Transactional
	public Contratado create(Contratado contratado) {
		Contratado createdContratado = contratado;
		return contratadoRepository.save(createdContratado);
	}
	
	@Transactional
	@Override
    public List<Contratado> findAll() {
        return (List<Contratado>) contratadoRepository.findAll();
    }


	@Override
	public Contratado delete(int id) throws NotFoundException {
		contratadoRepository.delete(id);
		return null;
	}

	@Override
	@Transactional(/*rollbackFor=ShopNotFound.class*/)
	public Contratado update(Contratado contratado) throws NotFoundException {
		Contratado updatedContratado = contratadoRepository.findOne(contratado.getId());

		if (updatedContratado == null)
			throw new NotFoundException();
		
		updatedContratado.setCnes(contratado.getCnes());
		updatedContratado.setCnpjOuCpfContratado(contratado.getCnpjOuCpfContratado());
		updatedContratado.setCodigoContratado(contratado.getCodigoContratado());
		updatedContratado.setCodigoPrestadorNaOperadora(contratado.getCodigoPrestadorNaOperadora());
		updatedContratado.setGuia(contratado.getGuia());
		updatedContratado.setNomeContratado(contratado.getNomeContratado());
		contratadoRepository.save(updatedContratado);
		return updatedContratado;
	}

	@Override
	public Contratado findById(int id) {
		return contratadoRepository.findOne(id);
	}
	
}
