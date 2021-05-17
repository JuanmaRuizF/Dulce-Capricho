class CreateGaleria < ActiveRecord::Migration[6.1]
  def change
    create_table :galeria do |t|
      t.string :img
      t.timestamps
    end
  end
end
