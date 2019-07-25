Given("I land on Home screen") do
  # text('Converter')
  find_element(id: 'action_search')
  find_element(accessibility_id: 'Open navigation drawer')
end

When('I choose menu conversions {string}') do |name|
  # find_element(accessibility_id: 'Open navigation drawer').click
  text(name).click
end

Then('I should land on My conversions screen') do
  text('No personal conversion created yet')
  find_element(:id, 'btn_new_custom_conversion')
end