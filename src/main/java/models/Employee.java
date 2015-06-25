package models;

import java.math.BigDecimal;

public class Employee extends BaseEmployee{
	
	private BigDecimal salary;

	public Employee() {
	}

	public BigDecimal getSalary() {
		return salary;
	}

	public void setSalary(BigDecimal salary) {
		this.salary = salary;
	}

}
