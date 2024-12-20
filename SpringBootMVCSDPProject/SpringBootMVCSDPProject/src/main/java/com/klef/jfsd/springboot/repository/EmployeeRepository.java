package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;


import com.klef.jfsd.springboot.model.Employee;

import jakarta.transaction.Transactional;

public interface EmployeeRepository extends JpaRepository<Employee, Integer>
{
	@Query("select e from Employee e where e.email=?1 and e.password=?2")
	public Employee checkemplogin(String email, String pwd);
	
	// reference
		@Query("update Employee e set e.status=?1 where e.id=?2")
		@Modifying // DML
		@Transactional // auto commit
		public int updateempstatus(String status,int eid);
		
		
		@Query("delete from Employee e where e.id=?1")
		@Modifying // DML
		@Transactional // auto commit
		public int deleteempbyid(int eid);
}
