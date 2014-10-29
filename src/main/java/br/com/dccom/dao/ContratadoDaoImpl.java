package br.com.dccom.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.modelo.Contratado;

public class ContratadoDaoImpl implements ContratadoDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(Contratado contratado) {
		
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(contratado);
		tx.commit();
		Serializable id = session.getIdentifier(contratado);
		session.close();
		return (Integer) id;
	}

	@Override
	public List<Contratado> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Contratado> contratadoList = session.createQuery("from Contratado").list();
		session.close();
		return contratadoList;
	}

	@Override
	public Contratado getRowById(int id) {
		Session session = sessionFactory.openSession();
		Contratado contratado = (Contratado) session.load(Contratado.class, id);
		return contratado;
	}

	@Override
	public int updateRow(Contratado contratado) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(contratado);
		tx.commit();
		Serializable id = session.getIdentifier(contratado);
		session.close();
		return (Integer) id;
	}

	@Override
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Contratado contratado = (Contratado) session.load(Contratado.class, id);
		
		session.delete(contratado);
		tx.commit();
		Serializable ids = session.getIdentifier(contratado);
		session.close();
		return (Integer) ids;
	}

}
