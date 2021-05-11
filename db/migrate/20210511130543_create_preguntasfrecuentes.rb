class CreatePreguntasfrecuentes < ActiveRecord::Migration[6.1]
  def change
    create_table :preguntasfrecuentes do |t|
      t.string :titulo
      t.string :descripcion
      t.timestamps
    end
  end
end
