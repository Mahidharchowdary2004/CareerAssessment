package com.klef.jfsd.project.StudentCarrerProject.service;

import com.klef.jfsd.project.StudentCarrerProject.model.Sms;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.util.MultiValueMap;
import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;
import com.twilio.type.PhoneNumber;

@Component
@Service
public class SMSService {
	
	private final String ACCOUNT_SID ="AC7a0fe20fbc5889a0934774d2dff1e544";

    private final String AUTH_TOKEN = "6186452b84c61a9eaebdf94cff6ccf41";

    private final String FROM_NUMBER = "+17753754345";

    public void send(Sms sms) {
    	Twilio.init(ACCOUNT_SID, AUTH_TOKEN);

        Message message = Message.creator(new PhoneNumber(sms.getTo()), new PhoneNumber(FROM_NUMBER), sms.getMessage())
                .create();
        System.out.println("here is my id:"+message.getSid());// Unique resource ID created to manage this transaction

    }

    public void receive(MultiValueMap<String, String> smscallback) {
    }

}
