class ItemsController < ApplicationController
	before_filter :admin_user,     only: [:destroy, :new]

  def new
  	@item = Item.new
  end

  def create
    @item = Item.new(params[:item])
    if @item.save
      flash[:success] = "Item Added."
      redirect_to items_path
    else
      render 'new/item'
    end 
  end

  def destroy
    Item.find(params[:id]).destroy
    flash[:success] = "Item destroyed."
    redirect_to items_path
  end 

  def index
  	@items = Item.paginate(page: params[:page])
  end

  def show
    @item = Item.find(params[:id])
  end

  private
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end 
end
