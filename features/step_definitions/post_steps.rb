Given /^there are (\d+) blog posts$/ do |num_posts|
  num_posts.to_i.times do
    Post.create :title => Faker::Lorem.words(rand(10)),
                :body => Faker::Lorem.sentences(rand(50))
  end
end

Then /^I should see (\d+) blog posts listed$/ do |num_posts|
  num_posts = num_posts.to_i
  all(".posts .post").count.should == num_posts
end

Given /^there aren't any blog posts$/ do
  Post.delete_all
end

Then /^I should not see any posts listed$/ do
  Then "I should see 0 blog posts listed"

  locate(".posts .empty")
end

Given /^there is a blog post titled "([^"]*)" posted yesterday$/ do |title|
  post = Post.create :title => title, :body => Faker::Lorem.sentences(rand(50))
  post.created_at = DateTime.yesterday.to_time
  post.save!
end

Given /^there is a blog post titled "([^"]*)" posted today$/ do |title|
  post = Post.create :title => title, :body => Faker::Lorem.sentences(rand(50))
  post.created_at = Time.now
  post.save!
end

Then /^I should see the post "([^"]*)" before the post "([^"]*)"$/ do |before_post, after_post|

  titles = all(".post h2").map(&:text)

  before_index = titles.index(before_post) || raise("'#{before_post}' not found on blog")
  after_index = titles.index(after_post) || raise("'#{after_post}' not found on blog")

  if before_index > after_index
    raise "The post '#{before_post}' was found after '#{after_post}'"
  end
end
