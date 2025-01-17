/*******************************************************************************
 * Copyright (c) 2016 IBM Corporation and others.
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
package com.ibm.ws.security.mp.jwt.error;

import javax.servlet.http.HttpServletResponse;

import com.ibm.wsspi.security.tai.TAIResult;

/**
 *
 */
public interface ErrorHandler {

    /**
     * Handles setting the response error status and displaying an error message for an end user in the browser.
     *
     * @param response
     * @param result
     * @return The same {@code TAIResult} object provided to the method.
     */
    public TAIResult handleErrorResponse(HttpServletResponse response, TAIResult result);

    /**
     * Handles setting the response error status and displaying an error message for an end user in the browser.
     *
     * @param response
     * @param httpStatusCode
     */
    public void handleErrorResponse(HttpServletResponse response, int httpStatusCode);

}
