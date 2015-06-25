package models;

import java.sql.Date;

import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

public class BaseEmployee {
	
	
	private int id;
	
	@Size(min=2, max=30)
	private String forename;
	
	@Size(min=2, max=30)
	private String surname;
	
	@Past
	private Date dateOfBirth;

	public BaseEmployee() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

}
