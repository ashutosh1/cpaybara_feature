Given(/^I visit home page and see the sign in popup$/) do
  within("div#new_city_select") do
    page.find(".no-subscription").click
  end
  click_link("Sign In")
end

Then(/^I should see sign in popup$/) do
  expect(page.has_selector?("div #signin_popup_form")).to eq(true)
end

And /^I submit sign in form$/ do
  within("div#signin_popup_form") do
    fill_in('sign_in_email', :with => 'vijay@vinsol.com')
    fill_in('sign_in_password', :with => '123456')
  end
  step "I click on Sign In button"
end

And /^I click on Sign In button$/ do
  within("div#signin_popup_form") do
    click_on("Sign in")
  end
end

Then(/^I should see flash notice "([^\"]*)"$/) do |expected_text|
  expect(page.find('#flash').find(".notice").text).to eq(expected_text)
end

Then(/^I should see error message "([^\"]*)"$/) do |expected_text|
  expect(page.find("#popup_flash").find('#flash').find(".alert").text).to eq(expected_text)
end
