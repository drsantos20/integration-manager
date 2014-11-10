package br.com.dccom.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.modelo.TipoAtendimento;

public class TipoAtendimentoDaoImpl implements TipoAtendimentoDao {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public int insertRow(TipoAtendimento tipoatendimento) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(tipoatendimento);
		tx.commit();
		Serializable id = session.getIdentifier(tipoatendimento);
		session.close();
		return (Integer) id;
	}

	@Override
	public List<TipoAtendimento> getList() {
		Session session = sessionFactory.openSession();
		String hql = "SELECT E.codigo FROM TipoAtendimento E";
		@SuppressWarnings("unchecked")
		List<TipoAtendimento> TipoAtendimentoList = session.createQuery(hql).list();
		session.close();
		return TipoAtendimentoList;
	}

	@Override
	public int updateRow(TipoAtendimento tipoatendimento) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.update(tipoatendimento);
		tx.commit();
		Serializable id = session.getIdentifier(tipoatendimento);
		session.close();
		return (Integer) id;
	}
	
	@Override
	public TipoAtendimento getRowById(int id) {
		Session session = sessionFactory.openSession();
		TipoAtendimento tipoatendimento = (TipoAtendimento) session.load(TipoAtendimento.class, id);
		return tipoatendimento;
	}

	@Override
	public int deleteRow(int id) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		TipoAtendimento tipoatendimento = (TipoAtendimento) session.load(TipoAtendimento.class, id);
		session.delete(tipoatendimento);
		tx.commit();
		Serializable ids = session.getIdentifier(tipoatendimento);
		session.close();
		return (Integer) ids;
	}

}
