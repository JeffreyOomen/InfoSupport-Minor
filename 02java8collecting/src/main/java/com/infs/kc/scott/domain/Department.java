package com.infs.kc.scott.domain;

import java.util.ArrayList;
import java.util.List;

public class Department {

	private int id;
	private String name;
	private String location;

	private List<Employee> employees;

	public Department(int id, String name, String location) {
		super();
		this.id = id;
		this.name = name;
		this.location = location;
		employees=new ArrayList<Employee>();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public List<Employee> getEmployees() {
		return employees;
	}

	public void setEmployees(List<Employee> employees) {
		this.employees = employees;
	}

	@Override
	public String toString() {
		return "Department [id=" + id + ", name=" + name + ", location="
				+ location + "]";
	}

}
