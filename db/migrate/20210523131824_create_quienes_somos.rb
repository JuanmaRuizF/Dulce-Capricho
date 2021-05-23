class CreateQuienesSomos < ActiveRecord::Migration[6.1]
  def change
    create_table :quienes_somos do |t|
      t.string :titulo
      t.string :descripcion
      t.timestamps
    end
  end
end
