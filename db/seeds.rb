# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'ffaker'


5.times do
  user = User.create(name: "#{FFaker::Name.name}", email: "#{FFaker::Internet.email}", moderator: true, creator: true)
  post = Post.create(title: "#{FFaker::JobBR.title}", body: "#{FFaker::LoremRU.paragraphs}", user: user, visible: true)
  comment = Comment.create(user: user, commentable: post, body: "#{FFaker::LoremRU.word}", visible: true )
end
