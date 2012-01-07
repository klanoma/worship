# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Worship::Application.initialize!

#Action Mailer!
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 465,
  :authentication => :login,
  :user_name => "webmaster@worshiplog.com",
  :password => "mollygirl"
}