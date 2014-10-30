package br.com.dccom.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.modelo.Profissional;

public class ProfissionalDaoImpl implements ProfissionalDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(Profissional profissional) {
		
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(profissional);
		tx.commit();
		Serializable id = session.getIdentifier(profissional);
		session.close();
		return (Integer) id;
	}

	@Override
	public List<Profissional> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Profissional> profissionalList = session.createQuery("from Profissional").list();
		session.close();
		return profissionalList;
	}

	@Override
	public Profissional getRowById(int id) {
		Session session = sessionFactory.openSession();
		Profissional profissional = (Profissional) session.load(Profissional.class, id);
		return profissional;
	}

	@Override
	public int updateRow(Profissional profissional) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(profissional);
		tx.commit();
		Serializable id = session.getIdentifier(profissional);
		session.close();
		return (Integer) id;
	}

	@Override
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Profissional profissional = (Profissional) session.load(Profissional.class, id);
		
		session.delete(profissional);
		tx.commit();
		Serializable ids = session.getIdentifier(profissional);
		session.close();
		return (Integer) ids;
	}

}
