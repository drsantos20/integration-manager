package br.com.dccom.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.modelo.Plano;

public class PlanoDaoImpl implements PlanoDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(Plano plano) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(plano);
		tx.commit();
		Serializable id = session.getIdentifier(plano);
		session.close();
		return (Integer) id;
	}

	@Override
	public List<Plano> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Plano> planoList = session.createQuery("from Plano").list();
		session.close();
		return planoList;
	}

	@Override
	public Plano getRowById(int id) {
		Session session = sessionFactory.openSession();
		Plano plano = (Plano) session.load(Plano.class, id);
		return plano;
	}

	@Override
	public int updateRow(Plano plano) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(plano);
		tx.commit();
		Serializable id = session.getIdentifier(plano);
		session.close();
		return (Integer) id;
	}

	@Override
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Plano plano = (Plano) session.load(Plano.class, id);
		session.delete(plano);
		tx.commit();
		Serializable ids = session.getIdentifier(plano);
		session.close();
		return (Integer) ids;
	}

}
