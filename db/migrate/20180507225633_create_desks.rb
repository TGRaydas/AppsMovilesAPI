class CreateDesks < ActiveRecord::Migration[5.1]
  def change
    create_table :desks do |t|
      t.references :local, foreign_key: true
      t.integer :number

      t.timestamps
    end
  end
end
