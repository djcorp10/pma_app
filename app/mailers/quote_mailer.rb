class QuoteMailer < ActionMailer::Base
  default to: "djcorp10@smumn.edu"

  def quote_email(quote)
  	@quote = quote
  	@url = "http://pma-app.herokuapp.com"
  	mail(:from => quote.email, :subject => "A new quote has been created!")
  end
end
