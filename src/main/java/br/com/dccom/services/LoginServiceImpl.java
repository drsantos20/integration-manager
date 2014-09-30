package br.com.dccom.services;

import org.springframework.beans.factory.annotation.Autowired;

import br.com.dccom.dao.LoginDao;
import br.com.dccom.modelo.Usuario;

public class LoginServiceImpl implements LoginService  {

	@Autowired
	LoginDao loginDAO;
	
	@Override
	public Usuario recuperarUsuario(String usuario) {
		return loginDAO.recuperarUsuario(usuario);
	}

	@Override
	public Usuario autenticarUsuario(String usuario, String senha) {
		return loginDAO.autenticarUsuario(usuario, senha);
	}

}
