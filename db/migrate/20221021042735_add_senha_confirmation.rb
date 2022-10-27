class AddSenhaConfirmation < ActiveRecord::Migration[7.0]
  def change
    add_column :cadastro_usuarios, :senha_confirmation, :string
  end
end
