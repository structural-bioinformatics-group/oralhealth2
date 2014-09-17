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
package org.openmrs.module.oralhealth2.api.impl;

import java.util.List;

import org.openmrs.api.impl.BaseOpenmrsService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.module.oralhealth2.api.oralhealthmoduleService;
import org.openmrs.module.oralhealth2.api.db.oralhealthmoduleDAO;
import org.openmrs.module.oralhealth2.oralhealthmodule;

/**
 * It is a default implementation of {@link oralhealthmoduleService}.
 */
public class oralhealthmoduleServiceImpl extends BaseOpenmrsService implements oralhealthmoduleService {
	
	protected final Log log = LogFactory.getLog(this.getClass());
	
	private oralhealthmoduleDAO dao;
	
	/**
     * @param dao the dao to set
     */
    public void setDao(oralhealthmoduleDAO dao) {
	    this.dao = dao;
    }
    
    /**
     * @return the dao
     */
    public oralhealthmoduleDAO getDao() {
	    return dao;
    }
    
    @Override
    public List<oralhealthmodule> getAllOralhealth() {
    	return  dao.getAllOralhealth();
    }
    
    @Override
    public oralhealthmodule getOralhealth(Integer id) {
    	return dao.getOralhealth(id);
    }
    
    @Override
    public oralhealthmodule saveOralhealth(oralhealthmodule oralhealth) {
    	return dao.saveOralhealth(oralhealth);
    }
    
    @Override
    public void purgeOralhealth(oralhealthmodule oralhealth) {
    	dao.purgeOralhealth(oralhealth);
    }
}