# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'ffaker'
mysql = Category.create(name: "MySql", logo_image: "mysql.png", title: "Темы посвященные mysql")
linux = Category.create(name: "Linux", logo_image: "linux.png", title: "Темы посвященные linux")
rails = Category.create(name: "Rails", logo_image: "rails.png", title: "Темы посвященные Ruby on Rails")


10.times do
  email = "#{FFaker::Internet.email}"
  user = User.create(name: "#{FFaker::Name.name}", email: email, password: email, moderator: true, creator: true)
  post = Post.create(title: "#{FFaker::JobBR.title}", body: "#{FFaker::LoremRU.paragraphs}", user: user, category: mysql, visible: true)
  35.times do
    comment = Comment.create(user: user, commentable: post, body: "#{FFaker::LoremRU.word}", visible: true )
  end
end

10.times do
  email = "#{FFaker::Internet.email}"
  user = User.create(name: "#{FFaker::Name.name}", email: email, password: email, moderator: true, creator: true)
  post = Post.create(title: "#{FFaker::JobBR.title}", body: "#{FFaker::LoremRU.paragraphs}", user: user, category: linux, visible: true)
  35.times do
    comment = Comment.create(user: user, commentable: post, body: "#{FFaker::LoremRU.word}", visible: true )
  end
end

10.times do
  email = "#{FFaker::Internet.email}"
  user = User.create(name: "#{FFaker::Name.name}", email: email, password: email, moderator: true, creator: true)
  post = Post.create(title: "#{FFaker::JobBR.title}", body: "#{FFaker::LoremRU.paragraphs}", user: user, category: rails, visible: true)
  35.times do
    comment = Comment.create(user: user, commentable: post, body: "#{FFaker::LoremRU.word}", visible: true )
  end
end
