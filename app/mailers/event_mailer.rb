class EventMailer < ActionMailer::Base
  default :from => "jpearson556@gmail.com"
  
  def event_email(user, event)
    @user = user
    @event = event
    mail(:to => ["jpearson@techbydsn.com", "klutton@techbydsn.com"], :subject => "Event Created by #{@user.name}" )
  end
end
