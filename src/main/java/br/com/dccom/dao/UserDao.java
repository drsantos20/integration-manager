package br.com.dccom.dao;

import br.com.dccom.modelo.User;


public interface UserDao {

	User findByUserName(String username);

}