ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = false
ActionMailer::Base.raise_delivery_errors = false
ActionMailer::Base.smtp_settings = {
  :enable_starttls_auto => false,  
  :address            => 'smtp.vitalizakharoff.com',
  :port               => 587,
  :tls                => true,
  :authentication     => :plain,
  :user_name          => 'me@vitalizakharoff.com',
  :password           => 'your_pass'
}

