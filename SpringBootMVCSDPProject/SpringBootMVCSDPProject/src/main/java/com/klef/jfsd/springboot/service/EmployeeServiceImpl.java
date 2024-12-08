package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.repository.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService
{
	@Autowired
	private EmployeeRepository employeeRepository;
	
	@Override
	public String EmployeeRegistration(Employee employee) 
	{
	employeeRepository.save(employee);
	return "Employee Registered Successfully";
	}

	@Override
	public Employee checkemplogin(String email, String pwd) {
		return employeeRepository.checkemplogin(email, pwd);
	}

	@Override
	public String updateemp(Employee e) 
	{
	    Employee emp = employeeRepository.findById(e.getId()).get();
	    emp.setContact(e.getContact());
	    emp.setDateofbirth(e.getDateofbirth());
	    emp.setDepartment(e.getDepartment());
	    emp.setGender(e.getGender());
	    emp.setLocation(e.getLocation());
	    emp.setName(e.getName());
	    emp.setPassword(e.getPassword());
	    emp.setSalary(e.getSalary());
	    
	    employeeRepository.save(emp);
	    return "Employee Updated Successfully";
	    
	}
	
}
