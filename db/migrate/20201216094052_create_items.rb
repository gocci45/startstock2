class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer      :itemname_id, null: false
      t.integer      :maker_id, null: false
      t.integer      :kt_gl_id, null: false
      t.integer      :souko_id, null: false
      t.integer      :category_id, null: false
      t.date        :expiration_date, null: false
      t.references  :user, foreign_key: true
      t.integer     :stock, null: false
      t.timestamps
    end
  end
end