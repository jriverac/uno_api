ActionMailer::Base.smtp_settings = {
   :address => "smtpout.secureserver.net",
   :port => "25",
   :domain => ENV['EMAIL_DOMAIN'],
   :user_name => ENV['EMAIL_USERNAME'],
   :password => ENV['EMAIL_PASSWORD'],
   :authentication => "plain",
   :enable_starttls_auto => true
}


if Rails.env == "development"
    ActionMailer::Base.default_url_options[:host] = "localhost:3000"
elsif Rails.env == "production"
    ActionMailer::Base.default_url_options[:host] = "uno_api.herokuapp.com"
end