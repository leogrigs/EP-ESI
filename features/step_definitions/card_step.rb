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
Given('I am on specific card page') do
    visit '/cards/1'
end
When('I click on "Destroy this card"') do
    click_button 'Destroy this card'
end
Then('I should see confirmation of my card deletion') do
    have_content('Card was successfully destroyed.')
end

# Update card
Given('I am on an edit card page') do
    visit '/cards/1/edit'
end
When('I change card name to "Card edited"') do
    fill_in 'Name', :with => "Card edited"
end
When('I click on "Update Card"') do
    click_button 'Update Card'
end
Then('I should see new card name') do
    have_content('Card edited')
end

# Update status of a card
Given('I am on cards page') do
    visit '/cards'
end
When('I click to change to next status') do
    find(:xpath, "/html/body/div/div[2]/div[4]/div/div[3]/div[2]/form[2]/button").click
end
When('I go to this card page') do
    visit '/cards/4'
end
Then('I should see your next status') do
    have_content('Doing')
end

# Filter cards by status
Given('I should see "To Do" status on card page') do
    visit '/cards'
    have_content('To Do')
end
Given('I should see "Done" status on card page') do
    visit '/cards'
    have_content('Done')
end
When('I click on "Doing-Filter"') do
    click_button "Doing-Filter"
end
Then('I should not see card with "To Do" status') do
    have_no_content('To Do')
end
Then('I should not see card with "Done" status') do
    have_no_content('Done')
end
