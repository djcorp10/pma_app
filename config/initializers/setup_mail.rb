ActionMailer::Base.smtp_settings ={
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'thedomain.com',
  :user_name            => 'admin@thedomain.com',
  :password             => '<password>',
  :authentication       => 'plain',
  :enable_starttls_auto => true
}