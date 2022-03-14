class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.string :order_id
      t.string :user_id

      t.timestamps
    end
  end
end
