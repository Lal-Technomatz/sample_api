class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gender
      t.string :mob_no
      t.string :role
      t.string :address
      t.integer :price
      t.integer :rating

      t.timestamps
    end
  end
end
