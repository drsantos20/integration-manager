package br.com.dccom.services;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;
import org.springframework.transaction.annotation.Transactional;

import br.com.dccom.modelo.Beneficiario;
import br.com.dccom.repository.BeneficiarioRepository;
import br.com.dccom.repository.TelefoneRepository;

public class BeneficiarioServiceImpl implements BeneficiarioService {

	@Resource
	private BeneficiarioRepository  beneficiarioRepository;
	@Resource
	private TelefoneRepository telefoneRepository;

	@Override
	@Transactional
	public Beneficiario create(Beneficiario beneficiario) {
		Beneficiario createdBeneficiario = beneficiario;
		beneficiario.getTelefone().get(0).setBeneficiario(beneficiario);
		return beneficiarioRepository.save(createdBeneficiario);
	}
	
	@Transactional
	@Override
    public List<Beneficiario> findAll() {
        return (List<Beneficiario>) beneficiarioRepository.findAll();
    }


	@Override
	public Beneficiario delete(int id) throws NotFoundException {
		beneficiarioRepository.delete(id);
		return null;
	}

	@Override
	@Transactional(/*rollbackFor=ShopNotFound.class*/)
	public Beneficiario update(Beneficiario beneficiario) throws NotFoundException {
		Beneficiario updatedBeneficiario = beneficiarioRepository.findOne(beneficiario.getId());

		if (updatedBeneficiario == null)
			throw new NotFoundException();
		
		updatedBeneficiario.setAtendimentoRN(beneficiario.getAtendimentoRN());
		updatedBeneficiario.setCep(beneficiario.getCep());
		updatedBeneficiario.setCidade(beneficiario.getCidade());
		updatedBeneficiario.setCpf(beneficiario.getCpf());
		updatedBeneficiario.setEmail(beneficiario.getEmail());
		updatedBeneficiario.setEndereco(beneficiario.getEndereco());
		updatedBeneficiario.setEstado(beneficiario.getEstado());
		updatedBeneficiario.setNascimento(beneficiario.getNascimento());
		updatedBeneficiario.setNome(beneficiario.getNome());
		updatedBeneficiario.setNumeroCarteira(beneficiario.getNumeroCarteira());
		updatedBeneficiario.setNumeroCNS(beneficiario.getNumeroCNS());
		updatedBeneficiario.setSexo(beneficiario.getSexo());
		updatedBeneficiario.setValidadeCarteira(beneficiario.getValidadeCarteira());
		
		updatedBeneficiario.getTelefone().clear();
		updatedBeneficiario.getTelefone().addAll(beneficiario.getTelefone());
		
		beneficiarioRepository.save(updatedBeneficiario);

		return updatedBeneficiario;
	}

	@Override
	public Beneficiario findById(int id) {
		return beneficiarioRepository.findOne(id);
	}
	
}
