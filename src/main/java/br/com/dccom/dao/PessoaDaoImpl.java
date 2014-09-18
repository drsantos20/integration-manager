package br.com.dccom.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.modelo.Pessoa;

public class PessoaDaoImpl implements PessoaDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(Pessoa pessoa) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pessoa);
		tx.commit();
		Serializable id = session.getIdentifier(pessoa);
		session.close();
		return (Integer) id;
	}

	@Override
	public List<Pessoa> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Pessoa> pessoaList = session.createQuery("from Pessoa").list();
		session.close();
		return pessoaList;
	}

	@Override
	public Pessoa getRowById(int id) {
		Session session = sessionFactory.openSession();
		Pessoa pessoa = (Pessoa) session.load(Pessoa.class, id);
		return pessoa;
	}

	@Override
	public int updateRow(Pessoa pessoa) {
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
		Pessoa pessoa = (Pessoa) session.load(Pessoa.class, id);
		session.delete(pessoa);
		tx.commit();
		Serializable ids = session.getIdentifier(pessoa);
		session.close();
		return (Integer) ids;
	}

}
