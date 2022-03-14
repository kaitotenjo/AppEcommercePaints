class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.references :paint, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.decimal :total
      t.decimal :price
      t.timestamps
    end
  end
end
