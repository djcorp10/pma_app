class QuotesController < ApplicationController
  def new
    @items = Item.all
  	@quote = Quote.new
  end

  def create
    @quote = Quote.new(params[:quote])
    if @quote.save
      flash[:success] = "Quote Added."
      redirect_to new_quote_path
    else
      render 'new/quote'
    end 
  end
end
