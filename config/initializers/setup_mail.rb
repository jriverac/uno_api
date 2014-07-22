ActionMailer::Base.smtp_settings = {
   :address => "smtpout.secureserver.net",
   :port => "25",
   :domain => ,
   :user_name => ,
   :password => ,
   :authentication => "plain",
   :enable_starttls_auto => true
}

if Rails.env == "development"
    ActionMailer::Base.default_url_options[:host] = "localhost:3000"
elsif Rails.env == "production"
    ActionMailer::Base.default_url_options[:host] = "uno_api.herokuapp.com"
end