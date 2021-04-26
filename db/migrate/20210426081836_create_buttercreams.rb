class CreateButtercreams < ActiveRecord::Migration[6.1]
  def change
    create_table :buttercreams do |t|
      t.string:nombre
      t.timestamps
    end
  end
end
