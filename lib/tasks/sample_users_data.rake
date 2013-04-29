require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    1000.times do |n|
      puts "Creating record number #{n}..."
      fname  = Faker::Name.first_name
      lname = Faker::Name.last_name
      email = Faker::Internet.email
      salary = (rand(10000)+5000).to_f
      city = Faker::Address.city
      User.create!(:email => email,
                   :fname => fname,
                   :lname => lname,
                   :salary => salary,
                   :city => city)
    end
  end
end