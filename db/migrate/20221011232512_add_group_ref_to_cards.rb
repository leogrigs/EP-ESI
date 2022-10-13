class AddGroupRefToCards < ActiveRecord::Migration[7.0]
  def change
    add_reference :cards, :group, foreign_key: true
  end
end
