10.times do
  Post.create :title => Faker::Lorem.words(rand(10)),
              :body => Faker::Lorem.paragraphs(rand(20))
end
