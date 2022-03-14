class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.decimal :total
      t.references :user
      t.string :status, default: 0
      t.timestamps
    end
  end
end
