class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.references :local
      t.string :user
      t.string :password
      t.string :token

      t.timestamps
    end
  end
end
