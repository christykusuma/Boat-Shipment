class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.integer :storage
      t.string :location

      t.references :user
      t.timestamps
    end
  end
end
