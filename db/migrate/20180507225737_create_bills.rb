class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.references :user, foreign_key: true
      t.references :desk, foreign_key: true

      t.timestamps
    end
  end
end
