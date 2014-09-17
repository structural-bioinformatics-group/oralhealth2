/**
 * The contents of this file are subject to the OpenMRS Public License
 * Version 1.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://license.openmrs.org
 *
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
 * License for the specific language governing rights and limitations
 * under the License.
 *
 * Copyright (C) OpenMRS, LLC.  All Rights Reserved.
 */
package org.openmrs.module.oralhealth2;

import java.io.Serializable;

import java.util.Date; //It might be perferable to use localDate from JODA eventually for birthdates and the like 

import org.openmrs.BaseOpenmrsObject;
import org.openmrs.BaseOpenmrsMetadata;

/**
 * It is a model class. It should extend either {@link BaseOpenmrsObject} or {@link BaseOpenmrsMetadata}.
 */
public class oralhealthmodule extends BaseOpenmrsObject implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private Integer id;
	
	/*For performance reasons, it might make sense to separate the variables into groups and 
	have things like the checkboxes in their own optional tables, but given the others all need a status,
	the need for normalization might be limited for now */
	//TODO : Note that the treatments and status variables have not yet been rewritten with spring:bind, due to verifying the working with selector and likely removing concepts (formular leftover?)
	//Likewise, check if smoking works as is, or has to be altered.
	private String patientName;
	private Date examinationDate;
	private String doctorName;
	private Date birthdate;
	private String city;
	private String placeOfResidence;
	
	private Integer psi_18_14;
	private Integer psi_13_23;
	private Integer psi_24_28;
	
	private Integer psi_48_44;
	private Integer psi_43_33;
	private Integer psi_34_48;
	
	//Valid Inputs : N,EX,RCT,F. These could be saved as integers and transformed into the 4 choices in jsp instead.
	//Also, an array and appropriate DB structure would be WAY better to use here....
	private String treatment_18;
	private String treatment_17;
	private String treatment_16;
	private String treatment_14;
	private String treatment_13;
	private String treatment_12;
	private String treatment_11;
	
	private String treatment_21;
	private String treatment_22;
	private String treatment_23;
	private String treatment_24;
	private String treatment_25;
	private String treatment_26;
	private String treatment_27;
	private String treatment_28;
	
	private String treatment_48;
	private String treatment_47;
	private String treatment_46;
	private String treatment_45;
	private String treatment_44;
	private String treatment_43;
	private String treatment_42;
	private String treatment_41;
		
	private String treatment_31;
	private String treatment_32;
	private String treatment_33;
	private String treatment_34;
	private String treatment_35;
	private String treatment_36;
	private String treatment_37;
	private String treatment_38;
	
	private String status_18;
	private String status_17;
	private String status_16;
	private String status_14;
	private String status_13;
	private String status_12;
	private String status_11;
	
	private String status_21;
	private String status_22;
	private String status_23;
	private String status_24;
	private String status_25;
	private String status_26;
	private String status_27;
	private String status_28;
	
	private String status_48;
	private String status_47;
	private String status_46;
	private String status_45;
	private String status_44;
	private String status_43;
	private String status_42;
	private String status_41;
		
	private String status_31;
	private String status_32;
	private String status_33;
	private String status_34;
	private String status_35;
	private String status_36;
	private String status_37;
	private String status_38;
	
	private String lips;
	private String gum;
	private String known_diseases;
	private String hard_palate;
	private String tonsil;
	private String drugs;
	private String soft_palate;
	private String tongue;
	private String uvula;
	private String other_notices;
	private Integer smoking; //this is a selector, actually. Likely have to do some mapping in manage.jsp (which is to be ported to proper tab anyhow)
	
	
	
	
	@Override
	public Integer getId() {
		return id;
	}
	
	@Override
	public void setId(Integer id) {
		this.id = id;
	}
	
	
	public String getPatientName() {
		return patientName;
	}
	
	public void setPatientName(String patientName) {
		this.patientName=patientName;
	}
	
	public Date getExaminationDate() {
		return examinationDate;
	}
	
	public void setExaminationDate(Date examinationDate) {
		this.examinationDate=examinationDate;
	}
	
	public String getDoctorName() {
		return doctorName;
	}
	
	public void setDoctorName(String doctorName) {
		this.doctorName=doctorName;
	}
	
	public Date getBirthdateName() {
		return birthdate;
	}
	
	public void setBirthdate(Date birthdate) {
		this.birthdate=birthdate;
	}
	
	public String getCity() {
		return city;
	}
	
	public void setCity(String city) {
		this.city=city;
	}
	
	public String getPlaceOfResidence() {
		return placeOfResidence;
	}
	
	public void setPlaceOfResidence(String placeOfResidence) {
		this.placeOfResidence=placeOfResidence;
	}
		
	public Integer getPsi_18_14() {
		return psi_18_14;
	}
	
	public void setPsi_18_14(Integer psi_18_14) {
		this.psi_18_14=psi_18_14;
	}
	
	public Integer getPsi_13_23() {
		return psi_13_23;
	}
	
	public void setPsi_13_23(Integer psi_13_23) {
		this.psi_13_23=psi_13_23;
	}
	
	public Integer getPsi_24_28() {
		return psi_24_28;
	}
	
	public void setPsi_24_28(Integer psi_24_28) {
		this.psi_24_28=psi_24_28;
	}
	
	public Integer getPsi_48_44() {
		return psi_48_44;
	}
	
	public void setPsi_48_44(Integer psi_48_44) {
		this.psi_48_44=psi_48_44;
	}
	
	public Integer getPsi_43_33() {
		return psi_43_33;
	}
	
	public void setPsi_43_33(Integer psi_43_33) {
		this.psi_43_33=psi_43_33;
	}
	
	public Integer getPsi_34_48() {
		return psi_34_48;
	}
	
	public void setPsi_34_48(Integer psi_34_48) {
		this.psi_34_48=psi_34_48;
	}
	
	public String getTreatment_18() {
		return treatment_18;
	}
	public void setTreatment_18(String treatment_18) {
		 this.treatment_18=treatment_18;
	}
	public String getTreatment_17() {
		return treatment_17;
	}
	public void setTreatment_17(String treatment_17) {
		 this.treatment_17=treatment_17;
	}
	public String getTreatment_16() {
		return treatment_16;
	}
	public void setTreatment_16(String treatment_16) {
		 this.treatment_16=treatment_16;
	}
	public String getTreatment_14() {
		return treatment_14;
	}
	public void setTreatment_14(String treatment_14) {
		 this.treatment_14=treatment_14;
	}
	public String getTreatment_13() {
		return treatment_13;
	}
	public void setTreatment_13(String treatment_13) {
		 this.treatment_13=treatment_13;
	}
	public String getTreatment_12() {
		return treatment_12;
	}
	public void setTreatment_12(String treatment_12) {
		 this.treatment_12=treatment_12;
	}
	public String getTreatment_11() {
		return treatment_11;
	}
	public void setTreatment_11(String treatment_11) {
		 this.treatment_11=treatment_11;
	}
	public String getTreatment_21() {
		return treatment_21;
	}
	public void setTreatment_21(String treatment_21) {
		 this.treatment_21=treatment_21;
	}
	public String getTreatment_22() {
		return treatment_22;
	}
	public void setTreatment_22(String treatment_22) {
		 this.treatment_22=treatment_22;
	}
	public String getTreatment_23() {
		return treatment_23;
	}
	public void setTreatment_23(String treatment_23) {
		 this.treatment_23=treatment_23;
	}
	public String getTreatment_24() {
		return treatment_24;
	}
	public void setTreatment_24(String treatment_24) {
		 this.treatment_24=treatment_24;
	}
	public String getTreatment_25() {
		return treatment_25;
	}
	public void setTreatment_25(String treatment_25) {
		 this.treatment_25=treatment_25;
	}
	public String getTreatment_26() {
		return treatment_26;
	}
	public void setTreatment_26(String treatment_26) {
		 this.treatment_26=treatment_26;
	}
	public String getTreatment_27() {
		return treatment_27;
	}
	public void setTreatment_27(String treatment_27) {
		 this.treatment_27=treatment_27;
	}
	public String getTreatment_28() {
		return treatment_28;
	}
	public void setTreatment_28(String treatment_28) {
		 this.treatment_28=treatment_28;
	}
	public String getTreatment_48() {
		return treatment_48;
	}
	public void setTreatment_48(String treatment_48) {
		 this.treatment_48=treatment_48;
	}
	public String getTreatment_47() {
		return treatment_47;
	}
	public void setTreatment_47(String treatment_47) {
		 this.treatment_47=treatment_47;
	}
	public String getTreatment_46() {
		return treatment_46;
	}
	public void setTreatment_46(String treatment_46) {
		 this.treatment_46=treatment_46;
	}
	public String getTreatment_45() {
		return treatment_45;
	}
	public void setTreatment_45(String treatment_45) {
		 this.treatment_45=treatment_45;
	}
	public String getTreatment_44() {
		return treatment_44;
	}
	public void setTreatment_44(String treatment_44) {
		 this.treatment_44=treatment_44;
	}
	public String getTreatment_43() {
		return treatment_43;
	}
	public void setTreatment_43(String treatment_43) {
		 this.treatment_43=treatment_43;
	}
	public String getTreatment_42() {
		return treatment_42;
	}
	public void setTreatment_42(String treatment_42) {
		 this.treatment_42=treatment_42;
	}
	public String getTreatment_41() {
		return treatment_41;
	}
	public void setTreatment_41(String treatment_41) {
		 this.treatment_41=treatment_41;
	}
	public String getTreatment_31() {
		return treatment_31;
	}
	public void setTreatment_31(String treatment_31) {
		 this.treatment_31=treatment_31;
	}
	public String getTreatment_32() {
		return treatment_32;
	}
	public void setTreatment_32(String treatment_32) {
		 this.treatment_32=treatment_32;
	}
	public String getTreatment_33() {
		return treatment_33;
	}
	public void setTreatment_33(String treatment_33) {
		 this.treatment_33=treatment_33;
	}
	public String getTreatment_34() {
		return treatment_34;
	}
	public void setTreatment_34(String treatment_34) {
		 this.treatment_34=treatment_34;
	}
	public String getTreatment_35() {
		return treatment_35;
	}
	public void setTreatment_35(String treatment_35) {
		 this.treatment_35=treatment_35;
	}
	public String getTreatment_36() {
		return treatment_36;
	}
	public void setTreatment_36(String treatment_36) {
		 this.treatment_36=treatment_36;
	}
	public String getTreatment_37() {
		return treatment_37;
	}
	public void setTreatment_37(String treatment_37) {
		 this.treatment_37=treatment_37;
	}
	public String getTreatment_38() {
		return treatment_38;
	}
	public void setTreatment_38(String treatment_38) {
		 this.treatment_38=treatment_38;
	}
	public String getStatus_18() {
		return status_18;
	}
	public void setStatus_18(String status_18) {
		 this.status_18=status_18;
	}
	public String getStatus_17() {
		return status_17;
	}
	public void setStatus_17(String status_17) {
		 this.status_17=status_17;
	}
	public String getStatus_16() {
		return status_16;
	}
	public void setStatus_16(String status_16) {
		 this.status_16=status_16;
	}
	public String getStatus_14() {
		return status_14;
	}
	public void setStatus_14(String status_14) {
		 this.status_14=status_14;
	}
	public String getStatus_13() {
		return status_13;
	}
	public void setStatus_13(String status_13) {
		 this.status_13=status_13;
	}
	public String getStatus_12() {
		return status_12;
	}
	public void setStatus_12(String status_12) {
		 this.status_12=status_12;
	}
	public String getStatus_11() {
		return status_11;
	}
	public void setStatus_11(String status_11) {
		 this.status_11=status_11;
	}
	public String getStatus_21() {
		return status_21;
	}
	public void setStatus_21(String status_21) {
		 this.status_21=status_21;
	}
	public String getStatus_22() {
		return status_22;
	}
	public void setStatus_22(String status_22) {
		 this.status_22=status_22;
	}
	public String getStatus_23() {
		return status_23;
	}
	public void setStatus_23(String status_23) {
		 this.status_23=status_23;
	}
	public String getStatus_24() {
		return status_24;
	}
	public void setStatus_24(String status_24) {
		 this.status_24=status_24;
	}
	public String getStatus_25() {
		return status_25;
	}
	public void setStatus_25(String status_25) {
		 this.status_25=status_25;
	}
	public String getStatus_26() {
		return status_26;
	}
	public void setStatus_26(String status_26) {
		 this.status_26=status_26;
	}
	public String getStatus_27() {
		return status_27;
	}
	public void setStatus_27(String status_27) {
		 this.status_27=status_27;
	}
	public String getStatus_28() {
		return status_28;
	}
	public void setStatus_28(String status_28) {
		 this.status_28=status_28;
	}
	public String getStatus_48() {
		return status_48;
	}
	public void setStatus_48(String status_48) {
		 this.status_48=status_48;
	}
	public String getStatus_47() {
		return status_47;
	}
	public void setStatus_47(String status_47) {
		 this.status_47=status_47;
	}
	public String getStatus_46() {
		return status_46;
	}
	public void setStatus_46(String status_46) {
		 this.status_46=status_46;
	}
	public String getStatus_45() {
		return status_45;
	}
	public void setStatus_45(String status_45) {
		 this.status_45=status_45;
	}
	public String getStatus_44() {
		return status_44;
	}
	public void setStatus_44(String status_44) {
		 this.status_44=status_44;
	}
	public String getStatus_43() {
		return status_43;
	}
	public void setStatus_43(String status_43) {
		 this.status_43=status_43;
	}
	public String getStatus_42() {
		return status_42;
	}
	public void setStatus_42(String status_42) {
		 this.status_42=status_42;
	}
	public String getStatus_41() {
		return status_41;
	}
	public void setStatus_41(String status_41) {
		 this.status_41=status_41;
	}
	public String getStatus_31() {
		return status_31;
	}
	public void setStatus_31(String status_31) {
		 this.status_31=status_31;
	}
	public String getStatus_32() {
		return status_32;
	}
	public void setStatus_32(String status_32) {
		 this.status_32=status_32;
	}
	public String getStatus_33() {
		return status_33;
	}
	public void setStatus_33(String status_33) {
		 this.status_33=status_33;
	}
	public String getStatus_34() {
		return status_34;
	}
	public void setStatus_34(String status_34) {
		 this.status_34=status_34;
	}
	public String getStatus_35() {
		return status_35;
	}
	public void setStatus_35(String status_35) {
		 this.status_35=status_35;
	}
	public String getStatus_36() {
		return status_36;
	}
	public void setStatus_36(String status_36) {
		 this.status_36=status_36;
	}
	public String getStatus_37() {
		return status_37;
	}
	public void setStatus_37(String status_37) {
		 this.status_37=status_37;
	}
	public String getStatus_38() {
		return status_38;
	}
	public void setStatus_38(String status_38) {
		 this.status_38=status_38;
	}

	public String getLips() {
		return lips;
	}
	public void setLips(String lips) {
		 this.lips=lips;
	}
	public String getGum() {
		return gum;
	}
	public void setGum(String gum) {
		 this.gum=gum;
	}
	public String getKnown_diseases() {
		return known_diseases;
	}
	public void setKnown_diseases(String known_diseases) {
		 this.known_diseases=known_diseases;
	}
	public String getHard_palate() {
		return hard_palate;
	}
	public void setHard_palate(String hard_palate) {
		 this.hard_palate=hard_palate;
	}
	public String getTonsil() {
		return tonsil;
	}
	public void setTonsil(String tonsil) {
		 this.tonsil=tonsil;
	}
	public String getDrugs() {
		return drugs;
	}
	public void setDrugs(String drugs) {
		 this.drugs=drugs;
	}
	public String getSoft_palate() {
		return soft_palate;
	}
	public void setSoft_palate(String soft_palate) {
		 this.soft_palate=soft_palate;
	}
	public String getTongue() {
		return tongue;
	}
	public void setTongue(String tongue) {
		 this.tongue=tongue;
	}
	public String getUvula() {
		return uvula;
	}
	public void setUvula(String uvula) {
		 this.uvula=uvula;
	}
	public String getOther_notices() {
		return other_notices;
	}
	public void setOther_notices(String other_notices) {
		 this.other_notices=other_notices;
	}
	public Integer getSmoking() {
		return smoking;
	}
	public void setSmoking(Integer smoking) {
		 this.smoking=smoking;
	}
	
}