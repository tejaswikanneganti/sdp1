package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Employee;

public interface EmployeeService 
{
	public String EmployeeRegistration(Employee employee);
	public Employee checkemplogin(String email,String pwd);
	public String updateemp(Employee e);
}
