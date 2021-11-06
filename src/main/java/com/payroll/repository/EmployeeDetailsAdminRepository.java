package com.payroll.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.payroll.Model.EmployeeDetailsAdmin;
@Repository
public interface EmployeeDetailsAdminRepository extends JpaRepository<EmployeeDetailsAdmin, Integer> {
	@Query("select a from EmployeeDetailsAdmin a where a.empId=(:empId) and a.empPassword=(:empPassword)")
	EmployeeDetailsAdmin findByLoginData(Integer empId, String empPassword);


}
