When('I am on create group page') do
    visit '/groups/new'
end

When('fill the Group form') do
    fill_in 'group_description', :with => "Group Description"
    fill_in 'group_card_qtd', :with => 1
end

When('click on "Create Group"') do
    click_button 'Create Group'
end

Then('I should see my group in the page') do
    have_content('Group was successfully created.')
end

