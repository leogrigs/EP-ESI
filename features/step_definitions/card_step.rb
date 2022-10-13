When('I am on create card page') do
    visit '/cards/new'
end

When('fill the form') do
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

# Scenario 2

When('I am on card page') do
    visit '/cards/new'
end

When('click on a card') do
    click_link 'Card 0'
end

Then('I should see my card info') do
    have_content('Edit this card')
end

