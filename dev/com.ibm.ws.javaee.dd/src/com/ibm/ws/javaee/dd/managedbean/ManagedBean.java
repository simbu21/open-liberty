/*******************************************************************************
 * Copyright (c) 2011, 2014 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License 2.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-2.0/
 * 
 * SPDX-License-Identifier: EPL-2.0
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/
package com.ibm.ws.javaee.dd.managedbean;

import com.ibm.ws.javaee.dd.commonbnd.RefBindingsGroup;
import com.ibm.ws.javaee.ddmetadata.annotation.DDAttribute;
import com.ibm.ws.javaee.ddmetadata.annotation.DDAttributeType;
import com.ibm.ws.javaee.ddmetadata.annotation.DDIdAttribute;

@DDIdAttribute
public interface ManagedBean extends RefBindingsGroup {

    @DDAttribute(name = "class", type = DDAttributeType.String, required = true)
    public String getClazz();

}
