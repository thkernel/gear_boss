class CreateGearTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :gear_types do |t|
      t.string :uid
      t.string :slug
      t.string :name
      t.text :description
      t.string :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
