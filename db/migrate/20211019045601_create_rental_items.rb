class CreateRentalItems < ActiveRecord::Migration[6.1]
  def change
    create_table :rental_items do |t|
      t.string :uid
      t.references :rental, null: false, foreign_key: true

      t.timestamps
    end
  end
end
