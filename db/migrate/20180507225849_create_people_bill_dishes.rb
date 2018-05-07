class CreatePeopleBillDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :people_bill_dishes do |t|
      t.references :bill_dish, foreign_key: true
      t.string :client_name

      t.timestamps
    end
  end
end
