class CreateAlergenos < ActiveRecord::Migration[6.1]
  def change
    create_table :alergenos do |t|
      t.string :screenSize
      t.string :imgSmall
      t.string :imgMedium
      t.string :imgLarge
      t.timestamps
    end
  end
end
