package br.com.dccom.dao;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.mapping.Collection;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.modelo.Beneficiario;
import br.com.dccom.modelo.Telefone;

public class BeneficiarioDaoImpl implements BeneficiarioDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(Beneficiario beneficiario) {
		
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		if(beneficiario!= null && !beneficiario.getTelefone().isEmpty()) {
			for (Telefone telefones : beneficiario.getTelefone()) {
				Telefone telefone = new Telefone();
				telefone.setBeneficiario(beneficiario);
				telefone.setDescricao(telefones.getDescricao());
				session.saveOrUpdate(telefone);
			}
		}
		
		session.saveOrUpdate(beneficiario);
		
		
		tx.commit();
		Serializable id = session.getIdentifier(beneficiario);
		session.close();
		return (Integer) id;
	}

	@Override
	public List<Beneficiario> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Beneficiario> beneficiarioList = session.createQuery("from Beneficiario").list();
		session.close();
		return beneficiarioList;
	}

	@Override
	public Beneficiario getRowById(int id) {
		Session session = sessionFactory.openSession();
		Beneficiario beneficiario = (Beneficiario) session.load(Beneficiario.class, id);
		return beneficiario;
	}

	@Override
	public int updateRow(Beneficiario beneficiario) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		
		if(beneficiario!= null && !beneficiario.getTelefone().isEmpty()) {
			for (Telefone telefones : beneficiario.getTelefone()) {
				Telefone telefone = new Telefone();
				telefone.setBeneficiario(beneficiario);
				telefone.setDescricao(telefones.getDescricao());
				telefone.setId(telefones.getId());
				session.update(telefone);
			}
		}
		
		session.update(beneficiario);
		tx.commit();
		Serializable id = session.getIdentifier(beneficiario);
		session.close();
		return (Integer) id;
	}

	@Override
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Beneficiario beneficiario = (Beneficiario) session.load(Beneficiario.class, id);
		session.delete(beneficiario);
		tx.commit();
		Serializable ids = session.getIdentifier(beneficiario);
		session.close();
		return (Integer) ids;
	}

}
