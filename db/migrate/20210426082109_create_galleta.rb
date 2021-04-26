class CreateGalleta < ActiveRecord::Migration[6.1]
  def change
    create_table :galleta do |t|
      t.string:nombre
      t.timestamps
    end
  end
end
