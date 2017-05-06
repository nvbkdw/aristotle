class CreateContainerItems < ActiveRecord::Migration[5.0]
  def change
    create_table :container_items do |t|
      t.references :container_id, foreign_key: true
      t.references :item_id, foreign_key: true

      t.timestamps
    end
  end
end
