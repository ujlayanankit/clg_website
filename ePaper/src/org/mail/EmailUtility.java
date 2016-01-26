package org.mail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailUtility {

	public static void sendEmail(final String userName, final String password, String toAddress,
			String subject, String messages) throws AddressException,
			MessagingException {

		// sets SMTP server properties
		Properties props = new Properties();
	      props.put("mail.smtp.auth", "true");
	      props.put("mail.smtp.starttls.enable", "true");
	      props.put("mail.smtp.host", "smtp.gmail.com");
	      props.put("mail.smtp.port", 587);

		// creates a new session with an authenticator
		/* Authenticator auth = new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(userName, password);
			}
		}; */
	      
	      
	      Session session = Session.getInstance(props, new javax.mail.Authenticator() {
	 	         protected PasswordAuthentication getPasswordAuthentication() {
	 	            return new PasswordAuthentication(userName, password);
	 	         }
	 	      }); 

		//Session session = Session.getInstance(props, auth);

		// creates a new e-mail message
		/*Message msg = new MimeMessage(session);

		msg.setFrom(new InternetAddress(userName));
		InternetAddress[] toAddresses = { new InternetAddress(toAddress) };
		msg.setRecipients(Message.RecipientType.TO, toAddresses);
		msg.setSubject(subject);
		msg.setSentDate(new Date());
		msg.setText(message);

		// sends the e-mail
		Transport.send(msg);*/
	      
	      Message message = new MimeMessage(session);
	         message.setFrom(new InternetAddress(userName));
	         message.setRecipients(Message.RecipientType.TO,
	         InternetAddress.parse(toAddress));
	         message.setSubject(subject);
	         message.setText(messages);
	 
	         Transport.send(message);

	}
}
