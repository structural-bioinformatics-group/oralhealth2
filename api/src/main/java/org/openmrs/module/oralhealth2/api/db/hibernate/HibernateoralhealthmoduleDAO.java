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
package org.openmrs.module.oralhealth2.api.db.hibernate;

import java.util.List;

import org.openmrs.module.oralhealth2.oralhealthmodule;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.SessionFactory;
import org.openmrs.module.oralhealth2.api.db.oralhealthmoduleDAO;
import org.openmrs.module.oralhealth2.oralhealthmodule;

/**
 * It is a default implementation of  {@link oralhealthmoduleDAO}.
 */
public class HibernateoralhealthmoduleDAO implements oralhealthmoduleDAO {
	protected final Log log = LogFactory.getLog(this.getClass());
	
	private SessionFactory sessionFactory;
	
	/**
     * @param sessionFactory the sessionFactory to set
     */
    public void setSessionFactory(SessionFactory sessionFactory) {
	    this.sessionFactory = sessionFactory;
    }
    
	/**
     * @return the sessionFactory
     */
    public SessionFactory getSessionFactory() {
	    return sessionFactory;
    }
    
    @Override
    public List<oralhealthmodule> getAllOralhealth() {
    	return sessionFactory.getCurrentSession().createCriteria(oralhealthmodule.class).list();
    }
    
    @Override
    public oralhealthmodule getOralhealth(Integer id) {
    	return (oralhealthmodule) sessionFactory.getCurrentSession().get(oralhealthmodule.class, id);
    
    }
    
    @Override
    public oralhealthmodule saveOralhealth(oralhealthmodule oralhealth) {
    	sessionFactory.getCurrentSession().save(oralhealth);
    	return oralhealth;
    }
    
    @Override
    public void purgeOralhealth(oralhealthmodule oralhealth) {
    	sessionFactory.getCurrentSession().delete(oralhealth);
    }
    
}