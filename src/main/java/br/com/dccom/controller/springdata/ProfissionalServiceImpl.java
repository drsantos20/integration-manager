package br.com.dccom.controller.springdata;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.data.persistence.ChangeSetPersister.NotFoundException;
import org.springframework.transaction.annotation.Transactional;

import br.com.dccom.modelo.Profissional;
import br.com.dccom.repository.ProfissionalRepository;

public class ProfissionalServiceImpl implements ProfissionalService {
	
//	@Autowired
//	ProfissionalDao dataDao;
	
	@Resource
	private ProfissionalRepository  profissionalRepository;

	@Override
	@Transactional
	public Profissional create(Profissional profissional) {
		Profissional createdProfissional = profissional;
		return profissionalRepository.save(createdProfissional);
//		return dataDao.insertRow(profissional);
	}
	
	@Transactional
	@Override
    public List<Profissional> findAll() {
        return (List<Profissional>) profissionalRepository.findAll();
    }


	@Override
	public Profissional delete(int id) throws NotFoundException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional(/*rollbackFor=ShopNotFound.class*/)
	public Profissional update(Profissional profissional) throws NotFoundException {
		Profissional updatedProfissional = profissionalRepository.findOne(profissional.getId());

		if (updatedProfissional == null)
			throw new NotFoundException();
		
		updatedProfissional.setNomeProfissional(profissional.getNomeProfissional());
		updatedProfissional.setCbos(profissional.getCbos());

		return updatedProfissional;
	}

	@Override
	public Profissional findById(int id) {
		return profissionalRepository.findOne(id);
	}

}
