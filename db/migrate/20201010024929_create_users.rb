class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, default: "user1"
      t.string :email
      t.string :admin, default: 0
      t.string :password_digest

      t.timestamps
    end
  end
end
