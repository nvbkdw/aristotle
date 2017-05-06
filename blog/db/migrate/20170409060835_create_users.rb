class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :bio
      t.text :location
      t.date :member_since

      t.timestamps
    end
  end
end
