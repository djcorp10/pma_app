class QuotesController < ApplicationController
  def new
    # @items = Item.all
  	@quote = Quote.new
  end

  def create
    # item_ids = params[:quote][:item_ids]
    # sum = 0
    # item_ids.each { |a| sum+=a.to_i }
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
    # @quote = Quote.new(params[:date], params[:email], params[:phone], 0)
    # if @quote.save
    #   flash[:success] = "Quote sent to Admin."
    #   redirect_to new_quote_path
    # else
    #   render 'new/quote'
    # end 
  end

end
