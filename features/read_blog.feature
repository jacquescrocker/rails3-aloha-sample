Feature: Blog
  In order to learn some l33t knowledge
  As a web visitor
  I want to read a blog full of l33t content

  Scenario: View list of posts
    Given there are 5 blog posts
    When  I go to the home page
    Then  I should see 5 blog posts listed

  Scenario: No Posts Visible
    Given there aren't any blog posts
    When I go to the Home Page
    Then I should not see any posts listed

  Scenario: Posts should be ordered by most recent first
    Given there is a blog post titled "Hello World" posted yesterday
      And there is a blog post titled "Latest" posted today
    When  I go to the Home Page
    Then  I should see the post "Latest" before the post "Hello World"