package br.com.dccom.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;
import org.springframework.transaction.annotation.Transactional;

import br.com.dccom.modelo.Telefone;
import br.com.dccom.repository.TelefoneRepository;

public class TelefoneServiceImpl implements TelefoneService {
	
	@Resource
	private TelefoneRepository  telefoneRepository;

	@Override
	@Transactional
	public Telefone create(Telefone telefone) {
		Telefone createdTelefone = telefone;
		return telefoneRepository.save(createdTelefone);
	}
	
	@Transactional
	@Override
    public List<Telefone> findAll() {
        return (List<Telefone>) telefoneRepository.findAll();
    }


	@Override
	public Telefone delete(int id) throws NotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional(/*rollbackFor=ShopNotFound.class*/)
	public Telefone update(Telefone telefone) throws NotFoundException {
		Telefone updatedTelefone = telefoneRepository.findOne(telefone.getId());

		if (updatedTelefone == null)
			throw new NotFoundException();
		
		updatedTelefone.setBeneficiario(updatedTelefone.getBeneficiario());
		updatedTelefone.setDescricao(updatedTelefone.getDescricao());
		updatedTelefone.setNumero(telefone.getNumero());
		updatedTelefone.setTipo(telefone.getTipo());
		return updatedTelefone;
	}

	@Override
	public Telefone findById(int id) {
		return telefoneRepository.findOne(id);
	}

	@Override
	public List<Telefone> findByBeneficiarioId(int id) {
		List<Telefone> telefones = telefoneRepository.findByBeneficiarioId(id);
		return telefones;
	}

}
