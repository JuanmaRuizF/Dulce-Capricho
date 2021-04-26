class CreateEventos < ActiveRecord::Migration[6.1]
  def change
    create_table :eventos do |t|
      t.string :nombre
      t.string :descripcion
      t.string :img1
      t.string :img2
      t.string :img3
      t.timestamps
    end
  end
end
