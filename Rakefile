task :environment do
  require_relative './config/environment'
end


namespace :db do 
  desc 'migrate changes to your database' 
  task :migrate => :environment do 
    Course.create_table
  end

  desc 'seed the database with some dummy data'
  task :seed do 
    require_relative './db/seeds.rb'
  end
end