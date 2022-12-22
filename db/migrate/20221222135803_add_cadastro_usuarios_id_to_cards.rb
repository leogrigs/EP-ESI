class AddCadastroUsuariosIdToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :cadastro_usuario_id, :integer
  end
end
