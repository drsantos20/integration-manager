package br.com.dccom.dao;

import java.util.List;

import br.com.dccom.modelo.Employee;

public interface DataDao {
	public int insertRow(Employee employee);

	public List<Employee> getList();

	public Employee getRowById(int id);

	public int updateRow(Employee employee);

	public int deleteRow(int id);

}
