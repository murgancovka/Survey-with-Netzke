ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address            => 'smtp.gmail.com',
  :port               => 587,
  :tls                => true,
  :authentication     => :plain,
  :user_name          => 'vitalizakharoff@gmail.com',
  :password           => 'fAn1337!'
}
