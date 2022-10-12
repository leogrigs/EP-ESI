class RemoveGroupIdFromCards < ActiveRecord::Migration[7.0]
  def change
    remove_column :cards, :group_id, :integer
  end
end
