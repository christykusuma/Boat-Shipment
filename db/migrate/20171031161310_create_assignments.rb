class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|

    t.references :boat
    t.references :job
      t.timestamps
    end
  end
end
