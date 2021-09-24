class AddCompanyModel < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.text :description

      t.timestamps
    end
  end
end
