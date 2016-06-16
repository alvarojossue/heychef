class CreateSpecials < ActiveRecord::Migration
  def change
    create_table :specials do |t|
      t.string :name
      t.string :description
      t.float :price
      t.boolean :delivery
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
