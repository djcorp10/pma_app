ActionMailer::Base.smtp_settings ={
  :address          => "smtp.gmail.com",
  :port         => 587,
  :domain           => "gmail.com",
  :user_name        => "my_user_name@gmail.com",
  :password         => "my_password",
  :authentication       => "Plain",
  :enable_starttls_auto => true
}