# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

desc "Adds writers and assigns them to episodes"
task :add_shows => :environment do 

  Show.all.each do |show|
    IMDB_Writers.new(show).call
  end
  DB_Cleaner.new.call
end

desc "Adds a single show"
task :add_show => :environment do 
  input = ENV["SHOW"]
  AddShow.new(input).call
  DB_Cleaner.new.call
end