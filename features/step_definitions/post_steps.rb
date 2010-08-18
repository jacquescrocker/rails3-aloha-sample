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
