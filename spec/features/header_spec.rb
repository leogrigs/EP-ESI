require 'rails_helper'

RSpec.feature "Header", type: :feature do
    context 'on home page' do
        before(:each) do
          visit root_path
        end
    
        scenario "navigating to home" do
          click_on 'MyHome'
          expect(current_path).to eq(root_path)
          click_on(class: 'logo-link')
          expect(current_path).to eq(root_path)
        end
    
        scenario "navigating to task board" do
            click_on 'MyTasks'
            expect(current_path).to eq(cards_path)
          end
    
          scenario "navigating to user page" do
            click_on 'MyUser'
            expect(current_path).to eq(usuarios_path)
          end
    end

    context 'on task board page' do
        before(:each) do
          visit cards_path
        end
    
        scenario "navigating to home" do
          click_on 'MyHome'
          expect(current_path).to eq(root_path)
          click_on(class: 'logo-link')
          expect(current_path).to eq(root_path)
        end
    
        scenario "navigating to task board" do
            click_on 'MyTasks'
            expect(current_path).to eq(cards_path)
          end
    
          scenario "navigating to user page" do
            click_on 'MyUser'
            expect(current_path).to eq(usuarios_path)
          end
    end

    context 'on user page' do
        before(:each) do
          visit usuarios_path
        end
    
        scenario "navigating to home" do
          click_on 'MyHome'
          expect(current_path).to eq(root_path)
          click_on(class: 'logo-link')
          expect(current_path).to eq(root_path)
        end
    
        scenario "navigating to task board" do
            click_on 'MyTasks'
            expect(current_path).to eq(cards_path)
          end
    
          scenario "navigating to user page" do
            click_on 'MyUser'
            expect(current_path).to eq(usuarios_path)
          end
    end
end
