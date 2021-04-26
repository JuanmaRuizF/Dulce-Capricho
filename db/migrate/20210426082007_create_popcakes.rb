class CreatePopcakes < ActiveRecord::Migration[6.1]
  def change
    create_table :popcakes do |t|
      t.string:nombre
      t.timestamps
    end
  end
end
