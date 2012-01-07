# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Worship::Application.initialize!

#Action Mailer!
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.default_url_options = { :host => 'beta.worshiplog.com' }
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :user_name => "webmaster@worshiplog.com",
  :password => "8da8ed11c740ac1f4bd85f24ffef8d1b",
  :authentication => :plain,
  :enable_starttls_auto => true
}