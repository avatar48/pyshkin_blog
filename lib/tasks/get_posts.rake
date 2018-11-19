namespace :db do
    desc 'Get all moderator posts'
    task get_posts: :environment do
      posts = Post.includes(:user).where(users: {moderator: true})
      posts.each do |post|
        puts "Статья '#{post.title}' за авторством #{post.user.name}"
      end
      puts "=========="
      puts "Всего статей #{posts.count}"
        
    end
end


