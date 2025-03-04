package com.khilare.crud.main.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.khilare.crud.main.model.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

	public Employee findAllByUnameAndPass(String uname, String pass);
	
	public Employee findById(int id);
}
