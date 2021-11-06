package com.payroll.Model;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;

import org.junit.jupiter.api.MethodOrderer.OrderAnnotation;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.annotation.Rollback;

import com.payroll.repository.EmployeeDetailsAdminRepository;

@DataJpaTest

@TestMethodOrder(OrderAnnotation.class)

public class EmployeeDetailsTests {
	@Autowired
	private EmployeeDetailsAdminRepository repo;
	@Autowired
	private EmployeeTestRepository etr;

	@Test
	@Rollback(false)
	@Order(1)
	public void testCreateProduct() {
		EmployeeDetailsAdmin savedProduct = repo.save(new EmployeeDetailsAdmin(101, "Balaji", 21, "balaji@gmail.com",
				"male", null, "Developer", null, "Chennai", 25000, "1234", "12/32/1998"));

		assertThat(savedProduct.getEmpId()).isGreaterThan(0);
	}

	@Test
	@Order(2)
	public void testListEmployee() {
		List<EmployeeDetailsAdmin> Employees = (List<EmployeeDetailsAdmin>) repo.findAll();
		assertThat(Employees).size().isGreaterThan(0);
	}

	@Test
	@Rollback(false)
	@Order(3)
	public void testUpdateProduct() {
		EmployeeDetailsAdmin employee = repo.getById(101);
		employee.setEmpName("Naveen");

		repo.save(employee);

		EmployeeDetailsAdmin updateEmployee = repo.getById(101);

		assertThat(updateEmployee.getEmpName()).isEqualTo("Naveen");
	}

	@Test
	@Order(4)
	public void testFindEmployeeById() {
		EmployeeDetailsAdmin employee = repo.getById(101);
		assertThat(employee.getEmpId()).isEqualTo(101);
	}

	@Test
	@Rollback(false)
	@Order(5)
	public void testDeleteProduct() {
		EmployeeDetailsAdmin employee = etr.findByName("Naveen");
		etr.deleteById(employee.getEmpId());
		EmployeeDetailsAdmin deleteemployee = etr.findByName("Naveen");
		assertThat(deleteemployee).isNull();
	}
}