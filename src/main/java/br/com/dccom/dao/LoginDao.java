package br.com.dccom.dao;

import br.com.dccom.modelo.User;
import br.com.dccom.modelo.Usuario;

public interface LoginDao {

	public Usuario recuperarUsuario(String usuario);

	public User autenticarUsuario(String usuario);

}
