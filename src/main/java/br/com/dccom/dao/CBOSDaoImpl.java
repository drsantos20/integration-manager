package br.com.dccom.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.modelo.CBOS;
import br.com.dccom.modelo.Profissional;

public class CBOSDaoImpl implements CBOSDao {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public int insertRow(CBOS cbos) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(cbos);
		tx.commit();
		Serializable id = session.getIdentifier(cbos);
		session.close();
		return (Integer) id;
	}

	@Override
	public List<CBOS> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<CBOS> CBOSList = session.createQuery("from CBOS").list();
		session.close();
		return CBOSList;
	}

	@Override
	public int updateRow(CBOS cbos) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(cbos);
		tx.commit();
		Serializable id = session.getIdentifier(cbos);
		session.close();
		return (Integer) id;
	}
	
	@Override
	public CBOS getRowById(int id) {
		Session session = sessionFactory.openSession();
		CBOS cbos = (CBOS) session.load(CBOS.class, id);
		return cbos;
	}

	@Override
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		CBOS cbos = (CBOS) session.load(CBOS.class, id);
		session.delete(cbos);
		tx.commit();
		Serializable ids = session.getIdentifier(cbos);
		session.close();
		return (Integer) ids;
	}

}
