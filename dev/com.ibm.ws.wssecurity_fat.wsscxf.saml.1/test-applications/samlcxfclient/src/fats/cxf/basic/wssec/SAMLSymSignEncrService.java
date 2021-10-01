/*******************************************************************************
 * Copyright (c) 2021 IBM Corporation and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 *******************************************************************************/

package fats.cxf.basic.wssec;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceFeature;
import javax.xml.ws.Service;

/**
 * This class was generated by Apache CXF 2.6.2
 * 2015-09-19T17:24:47.882-05:00
 * Generated source version: 2.6.2
 * 
 */
@WebServiceClient(name = "SAMLSymSignEncrService", 
                  wsdlLocation = "SamlTokenWebSvc.wsdl",
                  targetNamespace = "http://wssec.basic.cxf.fats") 
public class SAMLSymSignEncrService extends Service {

    public final static URL WSDL_LOCATION;

    public final static QName SERVICE = new QName("http://wssec.basic.cxf.fats", "SAMLSymSignEncrService");
    public final static QName SAMLSymSignEncrPort = new QName("http://wssec.basic.cxf.fats", "SAMLSymSignEncrPort");
    static {
        URL url = SAMLSymSignEncrService.class.getResource("SamlTokenWebSvc.wsdl");
        if (url == null) {
            java.util.logging.Logger.getLogger(SAMLSymSignEncrService.class.getName())
                .log(java.util.logging.Level.INFO, 
                     "Can not initialize the default wsdl from {0}", "SamlTokenWebSvc.wsdl");
        }       
        WSDL_LOCATION = url;
    }

    public SAMLSymSignEncrService(URL wsdlLocation) {
        super(wsdlLocation, SERVICE);
    }

    public SAMLSymSignEncrService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public SAMLSymSignEncrService() {
        super(WSDL_LOCATION, SERVICE);
    }
    
    /**
     *
     * @return
     *     returns SamlTokenType
     */
    @WebEndpoint(name = "SAMLSymSignEncrPort")
    public SamlTokenType getSAMLSymSignEncrPort() {
        return super.getPort(SAMLSymSignEncrPort, SamlTokenType.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns SamlTokenType
     */
    @WebEndpoint(name = "SAMLSymSignEncrPort")
    public SamlTokenType getSAMLSymSignEncrPort(WebServiceFeature... features) {
        return super.getPort(SAMLSymSignEncrPort, SamlTokenType.class, features);
    }

}
