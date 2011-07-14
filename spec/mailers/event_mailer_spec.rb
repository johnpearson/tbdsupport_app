require "spec_helper"

describe EventMailer do
  before { ActionMailer::Base.deliveries = [] }
  
  it "should send event emails" do
    @user = Factory(:user)
    @event = Factory(:event)
    EventMailer.event_email(@user, @event).deliver
    ActionMailer::Base.deliveries.should_not be_empty
  end
end
