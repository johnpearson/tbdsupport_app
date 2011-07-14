class EventMailer < ActionMailer::Base
  default :from => "support@techbydsn.com"
  
  def event_email(user, event)
    @user = user
    @event = event
    mail(:to => "jpearson@techbydsn.com", :subject => "Event Created by #{@user.name}" )
  end
end
