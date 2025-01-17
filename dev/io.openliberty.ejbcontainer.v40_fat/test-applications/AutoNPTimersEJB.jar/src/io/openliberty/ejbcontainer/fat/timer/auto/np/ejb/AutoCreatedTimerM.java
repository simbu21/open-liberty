/*******************************************************************************
 * Copyright (c) 2021 IBM Corporation and others.
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

package io.openliberty.ejbcontainer.fat.timer.auto.np.ejb;

import java.util.Properties;

import jakarta.ejb.Timer;

public interface AutoCreatedTimerM {
    public Properties getTimerData(String infoToMatchOn);

    public void firstOverridenMethod(Timer timer);

    public void secondOverridenMethod(Timer timer);

    public void clearAllTimers();
}
