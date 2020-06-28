package com.hms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Calendar;

import com.hms.bean.PatientBean;
import com.hms.utils.DBConnection;

public class PatientDao {

	public static int addPatient(PatientBean patient) {
		int result = 0;
		//create a java timestamp object that represents the current time (i.e., a "current timestamp")
	    Calendar calendar = Calendar.getInstance();
	    java.sql.Timestamp ourJavaTimestampObject = new java.sql.Timestamp(calendar.getTime().getTime());
		String INSERT_PATIENT_SQL = "insert into pat_test(patient_id,patient_ssn,patient_name,patient_address,patient_state,patient_city,patient_age,patient_doj,patient_typeOfBed,patient_status)values(?,?,?,?,?,?,?,?,?,?);";

		try {
			Connection con = DBConnection.createConnection();
			PreparedStatement ps = con.prepareStatement(INSERT_PATIENT_SQL);

			ps.setInt(1, patient.getPatientId());
			ps.setInt(2, patient.getPatientSsnNo());
			ps.setString(3, patient.getPatientName());
			ps.setString(4, patient.getPatientAddress());
			ps.setString(5, patient.getPatientState());
			ps.setString(6, patient.getPatientCity());
			ps.setInt(7, patient.getPatientAge());
			ps.setTimestamp(8, patient.getDateOfJoining());
			ps.setString(9, patient.getTypeOfBed());
			ps.setString(10, patient.getStatus());

			System.out.println(ps);

			result = ps.executeUpdate();

		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}

		return result;
	}
}
