class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email, null: false, unique: true
      t.text :password_digest, null: false

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
  end
end
