package br.com.dccom.services;

import javax.annotation.Resource;

import br.com.dccom.modelo.User;
import br.com.dccom.modelo.Usuario;
import br.com.dccom.repository.LoginRepository;

public class LoginServiceImpl implements LoginService {
	
	@Resource
	private LoginRepository  loginRepository;

	@Override
	public Usuario recuperarUsuario(String usuario) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User autenticarUsuario(String username) {
		User users = null;

		users = loginRepository.findByUsername(username);

		if (users != null) {
			return users;
		} else {
			return null;
		}

	}

}
