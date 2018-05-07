class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.references :local, foreign_key: true
      t.string :name
      t.integer :price
      t.string :product_type
      t.string :detail

      t.timestamps
    end
  end
end
