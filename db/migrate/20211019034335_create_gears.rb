class CreateGears < ActiveRecord::Migration[6.1]
  def change
    create_table :gears do |t|
      t.string :uid
      t.string :slug
      t.references :gear_type, null: false, foreign_key: true
      t.string :brand
      t.string :model
      t.string :manufacture_year
      t.string :name

      t.string :chassis_number
      t.string :immatriculation_number
      t.string :color
      t.datetime :manufacture_date
      t.datetime :circulation_date
      t.string :mileage
      t.string :fuel_type
      t.string :status
      t.text :description
      
      t.references :park, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
