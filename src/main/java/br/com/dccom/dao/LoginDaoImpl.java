package br.com.dccom.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.modelo.User;
import br.com.dccom.modelo.Usuario;

public class LoginDaoImpl implements LoginDao {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public Usuario recuperarUsuario(String usuario) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User autenticarUsuario(String username) {
		Session session = sessionFactory.openSession();
		List<User> users = new ArrayList<User>();

		users = session.createQuery("from User where username=?")
				.setParameter(0, username).list();

		if (users.size() > 0) {
			return users.get(0);
		} else {
			return null;
		}

	}

}
