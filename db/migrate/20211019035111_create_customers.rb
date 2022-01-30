class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :uid
      t.string :customer_type
      t.string :company_name
      t.string :firt_name
      t.string :last_name
      t.string :civility
      t.string :address
      t.string :contry
      t.string :city
      t.string :locality
      t.string :phone
      t.string :email
      t.string :status
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
