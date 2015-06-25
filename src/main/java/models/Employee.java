package models;

import java.math.BigDecimal;
import java.sql.Date;

import javax.validation.constraints.Digits;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

public class Employee {
	
	private int id;
	
	private int salesId;
	
	@Size(min=2, max=30)
	private String forename;
	
	@Size(min=2, max=30)
	private String surname;
	
	@Past
	private Date dateOfBirth;
	
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

	public String getForename() {
		return forename;
	}

	public void setForename(String forename) {
		this.forename = forename;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSalesId() {
		return salesId;
	}

	public void setSalesId(int salesId) {
		this.salesId = salesId;
	}

}
