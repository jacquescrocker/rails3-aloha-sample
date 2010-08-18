require 'spec_helper'

describe Post do

  def fresh_post
    Post.first
  end

  let(:lorem) do
    "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
  end

  it "should allow me to create a new post" do
    Post.create
    Post.count.should == 1
  end

  it "should allow me to set a title on a post" do
    Post.create :title => "Some Title"
    fresh_post.title.should == "Some Title"
  end

  it "should allow me to set a body on a post" do
    Post.create :body => lorem
    fresh_post.body.should == lorem
  end

  it "should allow me to set a really really long body on a post" do
    Post.create :body => lorem*10
    fresh_post.body.should == (lorem*10)
  end
end
