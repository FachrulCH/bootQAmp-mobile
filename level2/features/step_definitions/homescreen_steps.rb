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
  expect(text('No personal conversion created yet').displayed?).to eq true
  expect(find_element(:id, 'btn_new_custom_conversion').displayed?).to eq false
end


When("I search for {string}") do |name|
  find_element(id: 'action_search').click
  find_element(id: 'search_src_text').send_keys name
  $driver.press_keycode(66) # enter
  sleep 2
end

Then("I should see left unit picker value should be {string}") do |picker_name|
  expect(find_elements(id: 'select_unit_spinner')[0].text).to eq picker_name
end

Then("I should see right unit picker value should be {string}") do |picker_name|
  expect(find_elements(id: 'select_unit_spinner')[1].text).to eq picker_name
end