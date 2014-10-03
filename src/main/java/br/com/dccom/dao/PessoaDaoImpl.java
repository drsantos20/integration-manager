package br.com.dccom.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.modelo.Beneficiario;

public class PessoaDaoImpl implements PessoaDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(Beneficiario pessoa) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pessoa);
		tx.commit();
		Serializable id = session.getIdentifier(pessoa);
		session.close();
		return (Integer) id;
	}

	@Override
	public List<Beneficiario> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Beneficiario> pessoaList = session.createQuery("from Beneficiario").list();
		session.close();
		return pessoaList;
	}

	@Override
	public Beneficiario getRowById(int id) {
		Session session = sessionFactory.openSession();
		Beneficiario pessoa = (Beneficiario) session.load(Beneficiario.class, id);
		return pessoa;
	}

	@Override
	public int updateRow(Beneficiario pessoa) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(pessoa);
		tx.commit();
		Serializable id = session.getIdentifier(pessoa);
		session.close();
		return (Integer) id;
	}

	@Override
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Beneficiario pessoa = (Beneficiario) session.load(Beneficiario.class, id);
		session.delete(pessoa);
		tx.commit();
		Serializable ids = session.getIdentifier(pessoa);
		session.close();
		return (Integer) ids;
	}

}
