package br.com.dccom.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;

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
	public Usuario autenticarUsuario(String usuario, String senha) {
		Session session = sessionFactory.openSession();
		Criteria criteria = session.createCriteria(Usuario.class);
		
		if(usuario != null) {
			criteria.add(Restrictions.eq("email", usuario));
		}
		
		if(senha != null) {
			criteria.add(Restrictions.eq("senha", senha));
		}
		
		Usuario usuarioEncontrado = (Usuario) criteria.uniqueResult();
		
		return usuarioEncontrado;
		
	}

}
