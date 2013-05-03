class QuoteMailer < ActionMailer::Base
  default to: "davidcorpstein@gmail.com"

  def quote_email(quote)
  	@quote = quote
  	@url = "http://pma-app.herokuapp.com"
  	mail(:subject => "A new quote has been created!", :from => quote.email)
  end
end
