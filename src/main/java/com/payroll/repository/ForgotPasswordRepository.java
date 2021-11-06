package com.payroll.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.payroll.Model.EmployeeDetailsAdmin;
@Repository
public interface ForgotPasswordRepository extends JpaRepository<EmployeeDetailsAdmin, Integer>{
	@Query("select u from EmployeeDetailsAdmin u where u.empEmail=(:empEmail)")
	public EmployeeDetailsAdmin getempByname(@Param("empEmail") String empEmail);
}
