package com.payroll.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.payroll.Model.Bank;
import com.payroll.Model.EmployeeDetailsAdmin;
@Repository
public interface BankRepository extends JpaRepository<Bank, Integer> {
	
}
