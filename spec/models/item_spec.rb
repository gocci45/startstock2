require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#create' do
    before do
      @item = FactoryBot.build(:item)
    end

    it '全ての条件が揃っている' do
      expect(@item).to be_valid
    end

    it '商品名が空欄だと保存できない' do
      @item.itemname_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Itemnameを入力してください")
    end

    it '商品名の情報が横棒だと保存されない' do
      @item.itemname_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include
    end

    it 'メーカーが空欄だと保存できない' do
      @item.maker_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Makerを入力してください")
    end

    it 'メーカーの情報が横棒だと保存されない' do
      @item.maker_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include
    end

    it 'カテゴリーの情報が空欄だと保存できない' do
      @item.category_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Categoryを入力してください")
    end

    it 'カテゴリーの情報が横棒だと保存されない' do
      @item.category_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include
    end

    it '倉庫の情報が空欄だと保存できない' do
      @item.souko_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Soukoを入力してください")
    end

    it '倉庫の情報が横棒だと保存されない' do
      @item.souko_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include
    end

    it '単位の情報が空欄だと保存できない' do
      @item.kt_gl_id = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Kt glを入力してください")
    end

    it '単位の情報が横棒だと保存されない' do
      @item.kt_gl_id = 1
      @item.valid?
      expect(@item.errors.full_messages).to include
    end

    it '個数の情報が空欄だと保存できない' do
      @item.stock = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Stockを入力してください")
    end

    it '個数の情報が全角数字だと保存されない' do
      @item.stock = '１２３４５'
      @item.valid?
      expect(@item.errors.full_messages).to include
    end

    it '日付が日付型ではない場合保存されない' do
      @item.expiration_date = 20200101
      @item.valid?
      expect(@item.errors.full_messages).to include
    end

    it 'userが紐づいていないと保存できない'do
      @item.user = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Userを入力してください")
    end
  end
end

