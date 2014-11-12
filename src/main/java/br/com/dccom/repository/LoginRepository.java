package br.com.dccom.repository;

import org.springframework.data.repository.CrudRepository;

import br.com.dccom.modelo.User;

public interface LoginRepository extends CrudRepository<User, Integer> {
	
	User findByUsername(String username);
}
