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
package com.ibm.ws.jmx.connector.server.rest.handlers;

import java.util.Map;

import org.osgi.service.component.ComponentContext;
import org.osgi.service.component.annotations.Activate;
import org.osgi.service.component.annotations.Component;
import org.osgi.service.component.annotations.ConfigurationPolicy;
import org.osgi.service.component.annotations.Deactivate;

import com.ibm.websphere.ras.Tr;
import com.ibm.websphere.ras.TraceComponent;
import com.ibm.ws.jmx.connector.converter.JSONConverter;
import com.ibm.ws.jmx.connector.converter.NotificationRecord;
import com.ibm.ws.jmx.connector.server.rest.APIConstants;
import com.ibm.ws.jmx.connector.server.rest.helpers.ErrorHelper;
import com.ibm.ws.jmx.connector.server.rest.helpers.OutputHelper;
import com.ibm.ws.jmx.connector.server.rest.helpers.RESTHelper;
import com.ibm.ws.jmx.connector.server.rest.notification.NotificationManager;
import com.ibm.wsspi.rest.handler.RESTHandler;
import com.ibm.wsspi.rest.handler.RESTRequest;
import com.ibm.wsspi.rest.handler.RESTResponse;
import com.ibm.wsspi.rest.handler.helper.RESTHandlerMethodNotAllowedError;

@Component(service = { RESTHandler.class },
           configurationPolicy = ConfigurationPolicy.IGNORE,
           immediate = true,
           property = {
                       "service.vendor=IBM",
                       RESTHandler.PROPERTY_REST_HANDLER_CUSTOM_ROUTING + "=true",
                       RESTHandler.PROPERTY_REST_HANDLER_CONTEXT_ROOT + "=" + APIConstants.JMX_CONNECTOR_API_ROOT_PATH,
                       RESTHandler.PROPERTY_REST_HANDLER_ROOT + "=" + APIConstants.PATH_NOTIFICATIONS_CLIENTID_INBOX })
public class NotificationInboxHandler implements RESTHandler {
    public static final TraceComponent tc = Tr.register(NotificationInboxHandler.class);

    @Activate
    protected void activate(ComponentContext context, Map<String, Object> properties) {}

    @Deactivate
    protected void deactivate(ComponentContext context, int reason) {}

    @Override
    public void handleRequest(RESTRequest request, RESTResponse response) {
        String method = request.getMethod();
        if (RESTHelper.isGetMethod(method)) {
            fetchNotificationInbox(request, response);
        } else if (RESTHelper.isDeleteMethod(method)) {
            removeNotificationInboxLegacy(request, response);
        } else {
            throw new RESTHandlerMethodNotAllowedError("GET,DELETE");
        }
    }

    private void fetchNotificationInbox(RESTRequest request, RESTResponse response) {
        String clientIDString = RESTHelper.getRequiredParam(request, APIConstants.PARAM_CLIENTID);

        int clientID = -1;
        try {
            clientID = Integer.parseInt(clientIDString);
        } catch (NumberFormatException e) {
            ErrorHelper.createRESTHandlerJsonException(e, null, APIConstants.STATUS_BAD_REQUEST);
        }

        //Fetch the notifications and return them
        NotificationRecord[] notificationRecords = NotificationManager.getNotificationManager().getClientInbox(clientID);

        OutputHelper.writeNotificationArrayOutput(response, notificationRecords, JSONConverter.getConverter());
    }

    /**
     * @Legacy
     */
    private void removeNotificationInboxLegacy(RESTRequest request, RESTResponse response) {
        String clientIDString = RESTHelper.getRequiredParam(request, APIConstants.PARAM_CLIENTID);

        int clientID = -1;
        try {
            clientID = Integer.parseInt(clientIDString);
        } catch (NumberFormatException e) {
            ErrorHelper.createRESTHandlerJsonException(e, null, APIConstants.STATUS_BAD_REQUEST);
        }

        //Remove the notification inbox
        NotificationManager.getNotificationManager().cleanUp(request, clientID);
        response.setStatus(APIConstants.STATUS_NO_CONTENT);
    }
}
