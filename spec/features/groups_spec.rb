require 'rails_helper'

RSpec.feature "Groups", type: :feature do
  context 'create new group' do

    before(:each) do
      visit new_group_path
      within('form') do
        fill_in 'Description', with: 'Work'
        fill_in 'Card qtd', with: 0
      end
    end

    scenario "should be successful" do
      # within('form') do
      #   fill_in 'Description', with: 'Work'
      # end
      click_button 'Create Group'
      expect(page).to have_content('Group was successfully created')
    end

    scenario "should fail because Description blank" do
      within('form') do
        fill_in 'Description', with: ''
      end
      click_button 'Create Group'
      expect(page).to have_content("Description can't be blank")
    end

    scenario "should fail because card_qtd blank" do
      within('form') do
        fill_in 'Card qtd', with: ''
      end
      click_button 'Create Group'
      expect(page).to have_content("Card qtd can't be blank")
    end
  end

  context 'update group' do
    let!(:group) { Group.create(description: "desc", card_qtd: 0) }
    before(:each) do
      visit edit_group_path(group)
    end

    scenario "should be successful" do
      within ("form") do
        fill_in 'Description', with: 'change'
        fill_in 'Card qtd', with: 1
      end
      click_button 'Update Group'
      expect(page).to have_content 'Group was successfully updated'
      expect(page).to have_content '1'
    end

    scenario "should fail" do
      within('form') do
        fill_in 'Description', with: ''
      end
      click_button 'Update Group'
      expect(page).to have_content "Description can't be blank"
    end
  end

  context 'destroy group' do
    let!(:group) { Group.create(description: "desc", card_qtd: 0) }
    scenario "should be successful" do
      visit group_path(group)
      expect { click_button 'Destroy this group' }.to change(Group, :count).by(-1)
      expect(page).to have_content 'Group was successfully destroyed'
    end
  end
end
