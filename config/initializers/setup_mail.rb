ActionMailer::Base.smtp_settings = {
  :address          => "smtp.accountsupport.com",
  :port             => "25",
  :authentication   => :plain,
  :user_name        => "support@techbydsn.com",
  :password         => "techbydsn"
}