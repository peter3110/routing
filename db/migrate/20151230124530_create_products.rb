class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :brand
      t.text :price

      t.timestamps null: false
    end
  end
end
