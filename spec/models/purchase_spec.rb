require 'rails_helper'

RSpec.describe Purchase, type: :model do
  describe '#create' do
    before do
      @purchase = FactoryBot.build(:purchase)
    end

    it '全ての条件が揃っている' do
      expect(@purchase).to be_valid
    end

    it '商品名が空欄だと保存できない' do
      @purchase.itemname_id = nil
      @purchase.valid?
      expect(@purchase.errors.full_messages).to include("Itemname can't be blank")
    end

    it '商品名の情報が横棒だと保存されない' do
      @purchase.itemname_id = 1
      @purchase.valid?
      expect(@purchase.errors.full_messages).to include
    end

    it '個数が空欄だと保存できない' do
      @purchase.buy_stock = nil
      @purchase.valid?
      expect(@purchase.errors.full_messages).to include("Buy stock can't be blank")
    end

    it 'userが紐づいていないと保存できない'do
      @purchase.user = nil
      @purchase.valid?
      expect(@purchase.errors.full_messages).to include("User must exist")
    end
  end
end
