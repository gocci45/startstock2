class CreatePurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.references  :user, foreign_key: true
      t.integer        :itemname_id, null: false
      t.integer         :buy_stock
      t.timestamps
    end
  end
end