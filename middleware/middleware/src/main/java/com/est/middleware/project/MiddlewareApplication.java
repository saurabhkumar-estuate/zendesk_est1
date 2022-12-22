package com.est.middleware.project;

import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.context.annotation.Bean;
 
@SpringBootApplication(exclude =  { HibernateJpaAutoConfiguration.class })
public class MiddlewareApplication {

	public static void main(String[] args) {
		SpringApplication.run(MiddlewareApplication.class, args);
	}
	
	 
	 
	@Bean
	public Boolean disableSSLValidation() throws Exception {
        final SSLContext sslContext = SSLContext.getInstance("TLS");
        sslContext.init(null, new TrustManager[] { new X509TrustManager() {
        	 
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
        } }, null);
        
        HttpsURLConnection.setDefaultSSLSocketFactory(sslContext.getSocketFactory());
        HttpsURLConnection.setDefaultHostnameVerifier(new HostnameVerifier() {
        	
        	@Override
        	public boolean verify(final String hostname, final SSLSession session) {
                return true;
        	}
        });
        
        return true;
	}
}
        
        
        
        
        	 
	
	 