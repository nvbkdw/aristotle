class CreateContainers < ActiveRecord::Migration[5.0]
  def change
    create_table :containers do |t|
      t.text :type
      t.integer :count

      t.timestamps
    end
  end
end
