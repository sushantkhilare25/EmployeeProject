package com.khilare.crud.main.service;

import com.khilare.crud.main.model.Employee;

public interface EmployeeService {

   public void saveData(Employee e);

    public Iterable findAll();
    
    public Employee findAllByUnameAndPass(String uname, String pass);

	public void deleteData(Employee e);
	
	public Employee findById(int id);

	public Employee editData(int id);

}
