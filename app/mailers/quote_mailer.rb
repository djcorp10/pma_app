class QuoteMailer < ActionMailer::Base
  default from: "davidcorpstein@gmail.com"

  def quote_email(quote)
  	@quote = quote
  	@url = "http://pma-app.herokuapp.com"
  	mail(:to => quote.email, :subject => "A new quote has been created!")
  end
end
