When /^I fill in "([^"]*)" with some content$/ do |field|
  @some_content = Faker::Lorem.sentences(rand(50))
  When %{I fill in "#{field}" with "#{@some_content}"}
end

Then /^I should see some content within "([^"]*)"$/ do |scope|
  Then %{I should see "#{@some_content}" within "#{scope}"}
end
