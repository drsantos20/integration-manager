package br.com.dccom.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;
import org.springframework.transaction.annotation.Transactional;

import br.com.dccom.modelo.TipoAtendimento;
import br.com.dccom.repository.TipoAtendimentoRepository;

public class TipoAtendimentoServiceImpl implements TipoAtendimentoService {

	@Resource
	private TipoAtendimentoRepository  tipoAtendimentoRepository;

	@Override
	@Transactional
	public TipoAtendimento create(TipoAtendimento tipoAtendimento) {
		TipoAtendimento createdTipoAtendimento = tipoAtendimento;
		return tipoAtendimentoRepository.save(createdTipoAtendimento);
	}
	
	@Transactional
	@Override
    public List<TipoAtendimento> findAll() {
        return (List<TipoAtendimento>) tipoAtendimentoRepository.findAll();
    }


	@Override
	public TipoAtendimento delete(int id) throws NotFoundException {
		tipoAtendimentoRepository.delete(id);
		return null;
	}

	@Override
	@Transactional(/*rollbackFor=ShopNotFound.class*/)
	public TipoAtendimento update(TipoAtendimento tipoAtendimento) throws NotFoundException {
		TipoAtendimento updatedTipoAtendimento = tipoAtendimentoRepository.findOne(tipoAtendimento.getId());

		if (updatedTipoAtendimento == null)
			throw new NotFoundException();
		
		updatedTipoAtendimento.setCodigo(tipoAtendimento.getCodigo());
		updatedTipoAtendimento.setDescricao(tipoAtendimento.getCodigo());
		tipoAtendimentoRepository.save(updatedTipoAtendimento);
		return updatedTipoAtendimento;
	}

	@Override
	public TipoAtendimento findById(int id) {
		return tipoAtendimentoRepository.findOne(id);
	}
	
}
