package com.khilare.crud.main.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.khilare.crud.main.model.Employee;
import com.khilare.crud.main.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService es;
	
	@GetMapping("/")
	public String preLogin()
	{
		return "login";
	}
	
	@GetMapping("/reg")
	public String regis()
	{
		return "registretion";
	}
	
	@GetMapping("/loginn")
	public String backToLogin(@ModelAttribute Employee e)
	{
		es.saveData(e);
		return "login";
	}
	
	@GetMapping("/log")
	public String logToSuccess(@RequestParam("uname") String un, @RequestParam("pass") String ps, Model m)
	{
		if(un.equals("admin") && ps.equals("admin@123"))
		{
			Iterable<Employee> list =es.findAll();
			m.addAttribute("data", list);
		}
		
		else {
			Employee ee = es.findAllByUnameAndPass(un, ps);
			List<Employee> al= new ArrayList<Employee>();
			al.add(ee);
			m.addAttribute("data", al);
		}
		return "success";
	}
	
	@GetMapping("/delete")
	public String deleteData(@ModelAttribute Employee e, Model m)
	{
		es.deleteData(e);
		Iterable<Employee> list =es.findAll();
		m.addAttribute("data", list);
		return "success";
	}
	
	@GetMapping("/edit")
	public String editData(@RequestParam("id") int id, Model m) 
	{
		Employee eee=es.editData(id);
		m.addAttribute("data", eee);
		return "edit";
	}
	@GetMapping("/update")
	public String updateData(@ModelAttribute Employee e, Model m)
	{
		es.saveData(e);
		Iterable<Employee> list =es.findAll();
		m.addAttribute("data", list);
		return "success";
	}
}
