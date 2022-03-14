class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :price
      t.string :content
      t.string :discount
      t.boolean :status

      t.timestamps
    end
  end
end
