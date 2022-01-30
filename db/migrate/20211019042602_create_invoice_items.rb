class CreateInvoiceItems < ActiveRecord::Migration[6.1]
  def change
    create_table :invoice_items do |t|
      t.string :uid
      t.references :invoice, null: false, foreign_key: true
      t.references :r
      t.timestamps
    end
  end
end
