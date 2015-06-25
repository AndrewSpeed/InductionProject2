package models;

public class BaseEmployee {
	
	private int id;
	private String forename;
	private String surname;

	public BaseEmployee() {
		
	}

	private int getId() {
		return id;
	}

	private void setId(int id) {
		this.id = id;
	}

	private String getForename() {
		return forename;
	}

	private void setForename(String forename) {
		this.forename = forename;
	}

	private String getSurname() {
		return surname;
	}

	private void setSurname(String surname) {
		this.surname = surname;
	}

}
