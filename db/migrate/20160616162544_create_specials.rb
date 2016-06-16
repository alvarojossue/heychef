class CreateSpecials < ActiveRecord::Migration
  def change
    create_table :specials do |t|
      t.string :name
      t.text :description
      t.float :price
      t.boolean :delivery

      t.timestamps null: false
    end
  end
end
