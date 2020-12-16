class TopsController < ApplicationController
  before_action :authenticate_user!

  def index
    @item = Item.order(:itemname_id).group(:itemname_id)
    @items = Item.all.order(:itemname_id).group(:itemname_id).sum(:stock)
    @purchase = Purchase.all.group(:itemname_id).sum(:buy_stock)
  end

  def new
    @itemgroup = Item.order(:itemname_id).group(:itemname_id)
    @items = Item.all.order(:itemname_id).group(:itemname_id).sum(:stock)
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.valid?
      @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def item_params
    params.require(:item).permit(:itemname_id, :maker_id, :kt_gl_id, :souko_id, :category_id, :expiration_date, :stock).merge(user_id: current_user.id)
  end
end
