class CreatePedidos < ActiveRecord::Migration[6.1]
  def change
    create_table :pedidos do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :telefono
      t.string :domicilio
      t.string :CP
      t.string :fechaEntrega
      t.string :comentario
      t.string :tuPedido
      t.timestamps
    end
  end
end
