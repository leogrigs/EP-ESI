class CreateUserAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :user_areas do |t|

      t.timestamps
    end
  end
end
