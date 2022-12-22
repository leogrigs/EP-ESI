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

# Destroy group
# Given('I am on specific group page') do
#     group = Group.new(description: 'teste', card_qtd: 0)
#     group.save
#     visit '/groups/1'
# end
# When('I click on "Destroy this group"') do
#     click_button 'Destroy this group'
# end
# Then('I should see confirmation of my group deletion') do
#     have_content('Group was successfully destroyed.')
# end

# Update group
Given('I am on an edit group page') do
    group1 = Group.create(description: 'group1', card_qtd: 0)
    visit '/groups/1/edit'
end
When('I change group description to "Group edited"') do
    fill_in 'Description', :with => "Group edited"
end
When('I click on "Update Group"') do
    click_button 'Update Group'
end
Then('I should see new group name') do
    have_content('Group edited')
end

# Filter cards by group
Given('I should see "group 1" on card page') do
    group1 = Group.create(description: 'group 1', card_qtd: 0)
    group2 = Group.create(description: 'group 2', card_qtd: 0)
    visit '/cards'
    have_content('group 1')
end
Given('I should see "group 2" on card page') do
    visit '/cards'
    have_content('group 2')
end
When('I click on "group 1"') do
    click_button "group 1"
end
Then('I should not see card from "group 2"') do
    have_no_content('group 2')
end

#Go to new group page
Given ('I shoud see "New Group" on card page') do
    visit '/cards'
    have_content('+ New Group')
end
When ('I click on "New Group" link') do
    click_on(id: "new-group")
end
Then ('I shoud see the "Create Group" button') do
    have_content('Create Group')
end

# Group form styles
Given('I am on group form page') do
    visit '/groups/new'
end
Then('I should see one form with form id') do
    have_css('form#form')
end