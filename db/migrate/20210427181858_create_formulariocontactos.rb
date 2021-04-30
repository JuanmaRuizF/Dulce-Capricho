class CreateFormulariocontactos < ActiveRecord::Migration[6.1]
  def change
    create_table :formulariocontactos do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :telefono
      t.string :comentario
      t.timestamps
    end
  end
end
