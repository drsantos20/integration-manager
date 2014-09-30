package br.com.dccom.dao;

import br.com.dccom.modelo.Usuario;

public interface LoginDao {

	public Usuario recuperarUsuario(String usuario);

	public Usuario autenticarUsuario(String usuario, String senha);

}
