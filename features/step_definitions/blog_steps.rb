Given /^I'm a blog owner$/ do
  When %{I go to the Login Page}
  When %{I fill in "Login" with "admin"}
  When %{I fill in "Password" with "admin"}
  When %{I press "Login"}
end