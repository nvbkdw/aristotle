class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.text :name
      t.references :creator, foreign_key: true
      t.date :create_since
      t.references :administrator, foreign_key: true
      t.text :description
      t.references :member_container, foreign_key: true
      t.boolean :privacy

      t.timestamps
    end
  end
end
