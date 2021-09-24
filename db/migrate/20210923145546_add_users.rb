class AddUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :company_id
      t.string :email
      t.string :phone_number
      t.string :password_hash

      t.timestamps
    end
  end
end
