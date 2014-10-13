package br.com.dccom.services;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.dao.LoginDao;
import br.com.dccom.modelo.User;
import br.com.dccom.modelo.Usuario;

public class LoginServiceImpl implements LoginService  {

	@Autowired
	LoginDao loginDAO;
	
	@Override
	public Usuario recuperarUsuario(String usuario) {
		return loginDAO.recuperarUsuario(usuario);
	}

	@Override
	public User autenticarUsuario(String usuario) {
		return loginDAO.autenticarUsuario(usuario);
	}

}
