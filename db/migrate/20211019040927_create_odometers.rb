class CreateOdometers < ActiveRecord::Migration[6.1]
  def change
    create_table :odometers do |t|
      t.string :uid
      t.references :gear, foreign_key: true
      t.references :driver, foreign_key: true
      t.float :mileage, default: 0.0
      t.string :unit
      t.string :status
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
