package web.Bean;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service("mailer")
public class Mailer {
	@Autowired
	JavaMailSender mailer;
	
	public boolean send(String from, String to, String subject, String body) {
		boolean check = false;
		try {
			MimeMessage mail = mailer.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mail, 
								true, "utf-8");
			
			helper.setFrom(from);
			helper.setTo(to);
			helper.setReplyTo(from);
			helper.setSubject(subject);
			helper.setText(body, true);
			
			mailer.send(mail);
			check = true;
		} catch (Exception e) {
			check = false;
			throw new RuntimeException(e);
		}
		return check;
	}
}
