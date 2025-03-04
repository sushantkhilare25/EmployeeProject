package com.khilare.crud.main.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.khilare.crud.main.model.Employee;
import com.khilare.crud.main.repository.EmployeeRepository;
import com.khilare.crud.main.service.EmployeeService;

@Service
public class EmployeeServiceimpl implements EmployeeService{

	@Autowired
	EmployeeRepository er;

	@Override
	public void saveData(Employee e) {
		er.save(e);
		
	}

	@Override
	public Iterable findAll() {
		// TODO Auto-generated method stub
		return er.findAll();
	}

	@Override
	public Employee findAllByUnameAndPass(String uname, String pass) {
		// TODO Auto-generated method stub
		return er.findAllByUnameAndPass(uname, pass);
	}

	@Override
	public void deleteData(Employee e) {
		// TODO Auto-generated method stub
		er.delete(e);
	}

	@Override
	public Employee findById(int id) {
		// TODO Auto-generated method stub
		return er.findById(id);
	}

	@Override
	public Employee editData(int id) {
		// TODO Auto-generated method stub
		return er.findById(id);
	}

	
}
