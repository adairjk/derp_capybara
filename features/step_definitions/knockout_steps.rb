Given(/^I am viewing the Knockoutjs table$/) do
  @page. click_link 'Dynamically add items to a list'
end

When(/^I remove a row from the table$/) do
  @page.within('#list_of_people') do
    row = @page.all('li').sample
    @original_row_content = row.text
    @page.within(row) do
      @page.click_link 'Remove'
    end
  end
end

When(/^I add a row to the table$/) do
  @original_row_count = @page.all('li').count
  @page.click_button('Add')
end

Then(/^I should not see the person in the list$/) do
  expect(@page).to_not have_content(@original_row_content)
end

Then(/^I should see a new row added to the table$/) do
  expect(@page.all('li').count).to eq(@original_row_count + 1)
end