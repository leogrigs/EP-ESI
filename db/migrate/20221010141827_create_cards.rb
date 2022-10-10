class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :description
      t.string :status
      t.integer :group_id

      t.timestamps
    end
  end
end
