require 'rails_helper'
require 'spec_helper'

RSpec.feature "Usuarios", type: :feature do
    context 'Criar um novo usuario' do
    
        before(:each) do
            visit usuarios_path
            within('form') do
              fill_in 'Nome', with: 'teste'
              fill_in 'Email', with: 'email@email.com'
              fill_in 'Senha', with: 'senha'
              fill_in 'Senha confirmation', with: 'senha'
            end
        end

        scenario 'deve ser bem sucedido' do
            click_button("Sign up")
            expect(page).to have_current_path("/usuarios")
        end

        scenario "deve falhar pois Nome esta em branco" do
            within('form') do
              fill_in 'Nome', with: ''
            end
            click_button("Sign up")        
            expect(page).to have_current_path("/usuarios")
            end

        scenario "deve falhar pois Email esta em branco" do
            within('form') do
                fill_in 'Email', with: ''
            end
            click_button("Sign up")        
            expect(page).to have_current_path("/usuarios")
        end

        scenario "deve falhar pois Senha esta em branco" do
            within('form') do
                fill_in 'Senha', with: ''
            end
            click_button("Sign up")        
            expect(page).to have_current_path("/usuarios")
        end
        
        scenario "deve falhar pois Confirmação Senha esta em branco" do
            within('form') do
                fill_in 'Senha confirmation', with: ''
            end
            click_button("Sign up")        
            expect(page).to have_current_path("/usuarios")
        end
    
    end

end
