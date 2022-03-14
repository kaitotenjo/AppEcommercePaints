class CreatePaints < ActiveRecord::Migration[6.0]
  def change
    create_table :paints do |t|
      t.string :name
      t.decimal :price
      t.string :color , default: "1.png"
      t.string :description
      t.string :type_paint
      t.string :img_paint

      t.timestamps
    end
  end
end
