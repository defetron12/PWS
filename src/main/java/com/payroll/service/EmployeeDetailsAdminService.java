package com.payroll.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.payroll.Model.Admin;
import com.payroll.Model.EmployeeDetailsAdmin;

@Service
public interface EmployeeDetailsAdminService {

	
	public void addNewEmployee(EmployeeDetailsAdmin employeeDetailsAdmin);
	public List<EmployeeDetailsAdmin> getAllEmployee();
	public EmployeeDetailsAdmin getEmployeeById(int empId);
	public void updateEmployee(EmployeeDetailsAdmin employeeDetailsAdmin);
	public void deleteEmployee(int empId);
	public EmployeeDetailsAdmin employeevalidation(EmployeeDetailsAdmin employeeDetailsAdmin);
	public EmployeeDetailsAdmin getEmployeeByIdPayslip(int empId);
	
}
