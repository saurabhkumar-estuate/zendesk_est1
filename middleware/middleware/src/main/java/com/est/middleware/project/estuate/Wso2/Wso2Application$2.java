package com.est.middleware.project.estuate.Wso2;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;

public class Wso2Application$2 implements HostnameVerifier {
	@Override
	public boolean verify(final String hostname, final SSLSession session) {
        return true;
	
	   	}
}

