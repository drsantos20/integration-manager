package br.com.dccom.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.modelo.Operadora;

public class OperadoraDaoImpl implements OperadoraDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(Operadora operadora) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(operadora);
		tx.commit();
		Serializable id = session.getIdentifier(operadora);
		session.close();
		return (Integer) id;
	}

	@Override
	public List<Operadora> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Operadora> operadoraList = session.createQuery("from Operadora").list();
		session.close();
		return operadoraList;
	}

	@Override
	public Operadora getRowById(int id) {
		Session session = sessionFactory.openSession();
		Operadora operadora = (Operadora) session.load(Operadora.class, id);
		return operadora;
	}

	@Override
	public int updateRow(Operadora operadora) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(operadora);
		tx.commit();
		Serializable id = session.getIdentifier(operadora);
		session.close();
		return (Integer) id;
	}

	@Override
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Operadora operadora = (Operadora) session.load(Operadora.class, id);
		session.delete(operadora);
		tx.commit();
		Serializable ids = session.getIdentifier(operadora);
		session.close();
		return (Integer) ids;
	}

}
