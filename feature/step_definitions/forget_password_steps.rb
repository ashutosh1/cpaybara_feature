And(/^I click forget password link$/) do
  within("div#signin_popup_form") do
    click_link("Forgot password?")
  end
end

Then(/^I should see forget password page$/) do
  expect(page.has_selector?("div.forgotPassword")).to eq(true)
end

Then(/^I should see "(.*?)"$/) do|expected_text|
  expect(page.text).to include(expected_text)
end

And(/^I click Send me reset password instructions$/) do
  within("div.forgotPassword") do
    click_on("Send me reset password instructions")
  end
end

Then(/^I should see error "(.*?)"$/) do |expected_text|
  expect(page.find(".forgotPassword").find(".errorMsg").text).to eq(expected_text)
end

And(/^I submit resend instruction with "(.*?)"$/) do |email|
  within("div.forgotPassword") do
    fill_in("user_email", :with => email)
    click_on("Send me reset password instructions")
  end
end

