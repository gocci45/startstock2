class Item < ApplicationRecord
  belongs_to :user
  

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :maker
  belongs_to_active_hash :kt_gl
  belongs_to_active_hash :souko
  belongs_to_active_hash :category
  belongs_to_active_hash :itemname

  with_options presence: true do

    with_options numericality: { other_than: 1 } do
      validates :itemname_id
      validates :maker_id
      validates :kt_gl_id
      validates :souko_id
      validates :category_id
    end
    
    validates :expiration_date
    validates :stock
  end
end
