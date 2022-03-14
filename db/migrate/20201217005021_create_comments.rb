class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :user_id
      t.string :paint_id

      t.timestamps
    end
  end
end
