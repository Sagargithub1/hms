package com.hms.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hms.bean.PatientBean;
import com.hms.dao.PatientDao;

/**
 * Servlet implementation class PatientServlet
 */
@WebServlet("/PatientServlet")
public class PatientServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
//		System.out.println("PatientServlet.doPost()");
		//create a java timestamp object that represents the current time (i.e., a "current timestamp")
	    Calendar calendar = Calendar.getInstance();
	    java.sql.Timestamp ourJavaTimestampObject = new java.sql.Timestamp(calendar.getTime().getTime());
	    
	    
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int patientSsnNo=Integer.parseInt(request.getParameter("patSsnNumber"));
		String patientName=request.getParameter("patName");
		int patientAge=Integer.parseInt(request.getParameter("patAge"));
//		date of joining
		String typeOfBed=request.getParameter("patBed");
		String patientAddress=request.getParameter("patAddress");
		String patientState=request.getParameter("patState");
		String patientCity=request.getParameter("patCity");
		
		PatientBean patient= new PatientBean();
		
		patient.setPatientSsnNo(patientSsnNo);
		patient.setPatientName(patientName);
		patient.setPatientAge(patientAge);
		patient.setDateOfJoining(ourJavaTimestampObject);
		patient.setTypeOfBed(typeOfBed);
		patient.setPatientAddress(patientAddress);
		patient.setPatientState(patientState);
		patient.setPatientCity(patientCity);
		
		try {
			PatientDao.addPatient(patient);
			
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
		
		response.sendRedirect("addPatientDetails.jsp");
		
		
		
		
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
