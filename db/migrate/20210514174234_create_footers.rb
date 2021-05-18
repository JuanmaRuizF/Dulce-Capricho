class CreateFooters < ActiveRecord::Migration[6.1]
  def change
    create_table :footers do |t|
      t.string :nombreizda
      t.string :enlaceizda

      t.string :nombremedio

      t.string :nombredcha
      t.string :enlacedcha

      t.timestamps
    end
  end
end
