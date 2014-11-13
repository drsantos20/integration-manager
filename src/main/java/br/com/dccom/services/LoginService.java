package br.com.dccom.services;

import br.com.dccom.modelo.User;
import br.com.dccom.modelo.Usuario;

public interface LoginService {
	
	public Usuario recuperarUsuario(String usuario);
	public User autenticarUsuario(String usuario);
	
}
