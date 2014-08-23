Given(/^I submit the Simple Example form with valid form data$/) do
  @page.click_link 'Simple Example'
  @page.within("#your_information") do
    @page.fill_in 'First Name', :with => "Bob"
    @page.fill_in 'Last Name', :with => "Smith"
    @page.fill_in 'Email', :with => "bob.smith@smith.com"
    @page.click_button 'Submit'
  end
end

Then(/^I should see that the form has been submitted successfully$/) do
  expect(@page).to have_content 'Thank you Bob for submitting the form'
end