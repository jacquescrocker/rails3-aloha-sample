Feature: Write blog
  In order to create some blog content
  As a blog owner
  I want to be able to write and edit my blog entries

  Background:
    Given I'm a blog owner

  Scenario: Click New Post
    When  I go to the Home Page
     And  I follow "New Post"
    Then  I should be on the New Post Page

  Scenario: Create a Blog Post
    When  I go to the New Post Page
      And I fill in "Title" with "My new Post"
      And I fill in "Body" with some content
      And I press "Submit"
    Then I should be on the Post Page for "My new Post"
      And I should see "Post successful" within ".flash"
      And I should see "My new Post" within ".post h2"
      And I should see some content within ".post .body"

  Scenario: Delete a Blog Post
    Given there are 3 blog posts
      And there is a blog post titled "Something Something" posted today
    When  I go to the Post Page for "Something Something"
      And I follow "Delete Post"
    Then  I should see "Post has been deleted"
      And I should be on the Home Page
      And I should not see "Something Something" within ".post h2"



