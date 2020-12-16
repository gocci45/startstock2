class PurchasesController < ApplicationController
  before_action :authenticate_user!

  def index
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @items = Item.all.order(:itemname_id).group(:itemname_id).sum(:stock)
    if @purchase.valid? 
      @items.each do |a,b|
        if @purchase.itemname_id == a && @purchase.buy_stock < b && b > 0
          @purchase.save
          redirect_to root_path
        end
      end
    else
      render :index
    end
  end

  private
  def purchase_params
    params.require(:purchase).permit(:buy_stock, :itemname_id).merge(user_id: current_user.id)
  end

end
