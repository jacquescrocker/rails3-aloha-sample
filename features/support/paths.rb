module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /the home\s?page/i
      '/'

    when /the login page/i
      '/login'

    when /the new post page/i
      new_post_path

    when /the Post Page for "([^"]*)"$/
      post = Post.where(:title => $1).first
      post_path(post)
    when /the Edit Post Page for "([^"]*)"$/
      post = Post.where(:title => $1).first
      edit_post_path(post)

    else
      begin
        page_name =~ /the (.*) page/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue Object => e
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
