# Add card
Given('I am on create card page') do
    visit '/cards/new'
end

When('I fill the form') do
    fill_in 'Name', :with => "Card name"
    fill_in 'Description', :with => "Card description"
    select "To Do", :from => "card_status"
    fill_in 'Group', :with => 1
end

When('click on "Create Card"') do
    click_button 'Create Card'
end

Then('I should see my card in the page') do
    have_content('Card was successfully created.')
end

# Destroy card
Given('I am on specific card view page') do
    visit '/cards'
    click_button 'todo'
end

When('I click on "Destroy this card"') do
    click_button 'Destroy this card'
end

Then('I should not see my card in the page') do
    have_content('Card was successfully destroyed.')
end
