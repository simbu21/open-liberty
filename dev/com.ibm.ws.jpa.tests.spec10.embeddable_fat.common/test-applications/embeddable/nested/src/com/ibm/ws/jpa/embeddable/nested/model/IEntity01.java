/*******************************************************************************
 * Copyright (c) 2023 IBM Corporation and others.
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

package com.ibm.ws.jpa.embeddable.nested.model;

public interface IEntity01 {

    //--------------------------------------------
    // Entity01 fields
    //--------------------------------------------
    public int getId();

    public void setId(int id);

    public String getEnt01_str01();

    public void setEnt01_str01(String str);

    public String getEnt01_str02();

    public void setEnt01_str02(String str);

    public String getEnt01_str03();

    public void setEnt01_str03(String str);

    //--------------------------------------------
    // Embeddable01 fields
    //--------------------------------------------
    public int getEmb01_int01();

    public void setEmb01_int01(int ii);

    public int getEmb01_int02();

    public void setEmb01_int02(int ii);

    public int getEmb01_int03();

    public void setEmb01_int03(int ii);
}
