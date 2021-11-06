package com.payroll.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.payroll.Model.Admin;

@Repository
public interface AdminRepositiry extends JpaRepository<Admin, String> {
	@Query("select u from Admin u where u.adminEmail=(:adminEmail) and u.adminPassword=(:adminPassword)")
	Admin findByLoginData(String adminEmail, String adminPassword);


}
