class Purchase < ApplicationRecord
  belongs_to :user
  
  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :itemname

  with_options presence: true do
    with_options numericality: { other_than: 1 } do
      validates :itemname_id
    end
    validates :buy_stock
  end
end
