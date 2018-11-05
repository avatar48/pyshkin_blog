namespace :files do
    desc 'Count *.rb files in project'
    def find_files
        Dir["#{Dir.pwd}/**/*.rb"]
    end
    
    task count: :environment do
        files = find_files
        puts "files *.rb = #{files.count}"
    end

    task lines: :environment do
        line_counter = 0
        files = find_files
        files.each do |path| 
           file = File.open(path)
           line_counter = line_counter + file.readlines.size
        end
        puts "line in files *.rb = #{line_counter}"
    end
end