class QuotesController < ApplicationController
  def new
    # @items = Item.all
  	@quote = Quote.new
  end

  def create
    @quote = Quote.create(params[:quote])
    if @quote.save
      flash[:success] = "Quote sent to Admin."
      # begin
        QuoteMailer.quote_email(@quote).deliver
      # rescue
      #   puts "***!!!Mail not sent!!!***"
      # end
      redirect_to new_quote_path
    else
      flash[:fail] = "Quote incorrect."
      redirect_to new_quote_path
    end
  end

end
