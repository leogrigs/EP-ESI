class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :description
      t.string :card_qtd

      t.timestamps
    end
  end
end
