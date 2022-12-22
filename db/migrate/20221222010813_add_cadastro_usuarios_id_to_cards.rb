class AddCadastroUsuariosIdToCards < ActiveRecord::Migration[7.0]
  def change
    add_reference :cards, :cadastro_usuarios, foreign_key: true
  end
end
