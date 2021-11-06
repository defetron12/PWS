package com.payroll.Model;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface EmployeeTestRepository extends CrudRepository<EmployeeDetailsAdmin, Integer> {
	@Query("select a from EmployeeDetailsAdmin a where a.empName=(:empName)")
	public EmployeeDetailsAdmin findByName(String empName);
}
