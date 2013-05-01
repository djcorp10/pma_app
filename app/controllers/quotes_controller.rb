class QuotesController < ApplicationController
  def new
    @items = Item.all
  	@quote = Quote.new
  end

  def create
    @quote = Quote.new(params[:quote])
    if @quote.save
      flash[:success] = "Quote sent to Admin."
      QuoteMailer.quote_email(@quote).deliver
      redirect_to new_quote_path
    else
      flash[:fail] = "Quote incorrect."
      redirect_to new_quote_path
    end
    # @quote = Quote.new(params[:date], params[:email], params[:phone], 0)
    # if @quote.save
    #   flash[:success] = "Quote sent to Admin."
    #   redirect_to new_quote_path
    # else
    #   render 'new/quote'
    # end 
  end
end
