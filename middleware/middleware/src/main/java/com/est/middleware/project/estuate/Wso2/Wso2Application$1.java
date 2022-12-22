package com.est.middleware.project.estuate.Wso2;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;

import javax.net.ssl.X509TrustManager;

public class Wso2Application$1 implements X509TrustManager {

	@Override
    public void checkClientTrusted(final X509Certificate[] x509Certificates, final String s) throws CertificateException {
    }
    
    @Override
    public void checkServerTrusted(final X509Certificate[] x509Certificates, final String s) throws CertificateException {
    }
    
    @Override
    public X509Certificate[] getAcceptedIssuers() {
        return new X509Certificate[0];
    }
}

