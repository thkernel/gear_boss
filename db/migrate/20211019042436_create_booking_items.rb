class CreateBookingItems < ActiveRecord::Migration[6.1]
  def change
    create_table :booking_items do |t|
      t.string :uid
      t.references :booking, null: false, foreign_key: true
      t.references :gear, null: false, foreign_key: true
      t.timestamps
    end
  end
end
