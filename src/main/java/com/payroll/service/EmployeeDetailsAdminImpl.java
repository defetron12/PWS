package com.payroll.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.payroll.Model.Admin;
import com.payroll.Model.EmployeeDetailsAdmin;
import com.payroll.repository.EmployeeDetailsAdminRepository;

@Service
public class EmployeeDetailsAdminImpl implements EmployeeDetailsAdminService {

	@Autowired
	EmployeeDetailsAdminRepository employeeDetailsAdminRepository;

	@Override
	public void addNewEmployee(EmployeeDetailsAdmin employeeDetailsAdmin) {
		// TODO Auto-generated method stub
		employeeDetailsAdminRepository.save(employeeDetailsAdmin);
	}

	@Override
	public List<EmployeeDetailsAdmin> getAllEmployee() {
		// TODO Auto-generated method stub
		List<EmployeeDetailsAdmin> employeeDetailsAdmins = employeeDetailsAdminRepository.findAll();
		return employeeDetailsAdmins;
	}

	@Override
	public EmployeeDetailsAdmin getEmployeeById(int empId) {
		// TODO Auto-generated method stub
		EmployeeDetailsAdmin e = employeeDetailsAdminRepository.getById(empId);
		return e;
	}

	@Override
	public void updateEmployee(EmployeeDetailsAdmin employeeDetailsAdmin) {
		// TODO Auto-generated method stub
		employeeDetailsAdminRepository.save(employeeDetailsAdmin);

	}

	@Override
	public void deleteEmployee(int empId) {
		// TODO Auto-generated method stub
		employeeDetailsAdminRepository.deleteById(empId);
	}

	@Override
	public EmployeeDetailsAdmin employeevalidation(EmployeeDetailsAdmin employeeDetailsAdmin) {
		// TODO Auto-generated method stub

		EmployeeDetailsAdmin employeeValid = employeeDetailsAdminRepository.findByLoginData(employeeDetailsAdmin.getEmpId(), employeeDetailsAdmin.getEmpPassword());
		return employeeValid;
	}

	@Override
	public EmployeeDetailsAdmin getEmployeeByIdPayslip(int empId) {
		// TODO Auto-generated method stub
		EmployeeDetailsAdmin e=employeeDetailsAdminRepository.getById(empId);
		
		return e;
	}

}
