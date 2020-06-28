package com.hms.bean;

import java.sql.Timestamp;

public class PatientBean {
	
	private int patientSsnNo;
	private int patientId;
	private String patientName;
	private int patientAge;
	private String patientAddress;
	private String patientState;
	private String patientCity;
	private Timestamp dateOfJoining;
	private String typeOfBed;
	private String status;
	
	//Default Constructor
	public PatientBean(){}
	//getters and setters

	public int getPatientSsnNo() {
		return patientSsnNo;
	}

	public void setPatientSsnNo(int patientSsnNo) {
		this.patientSsnNo = patientSsnNo;
	}

	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}

	public String getPatientName() {
		return patientName;
	}

	public void setPatientName(String patientName) {
		this.patientName = patientName;
	}

	public int getPatientAge() {
		return patientAge;
	}

	public void setPatientAge(int patientAge) {
		this.patientAge = patientAge;
	}

	public String getPatientAddress() {
		return patientAddress;
	}

	public void setPatientAddress(String patientAddress) {
		this.patientAddress = patientAddress;
	}

	public String getPatientState() {
		return patientState;
	}

	public void setPatientState(String patientState) {
		this.patientState = patientState;
	}

	public String getPatientCity() {
		return patientCity;
	}

	public void setPatientCity(String patientCity) {
		this.patientCity = patientCity;
	}

	public Timestamp getDateOfJoining() {
		return dateOfJoining;
	}

	public void setDateOfJoining(Timestamp dateOfJoining) {
		this.dateOfJoining = dateOfJoining;
	}

	public String getTypeOfBed() {
		return typeOfBed;
	}

	public void setTypeOfBed(String typeOfBed) {
		this.typeOfBed = typeOfBed;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	
	
	

}
