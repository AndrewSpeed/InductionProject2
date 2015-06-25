package models;

import java.math.BigDecimal;

import javax.validation.constraints.Digits;

public class Employee extends BaseEmployee{
	
	@Digits(integer=11, fraction=2)
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
