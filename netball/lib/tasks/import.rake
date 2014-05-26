require 'csv'
namespace :import do
  task :create_games => :environment do
    csv_text = File.read('All data.csv')
	csv = CSV.parse(csv_text, :headers => true)
	csv.each do |row|
		Game.create!(row.to_hash)
	end
  end
  
  task :create_venues => :environment do
    csv_text = File.read('Venues.csv')
	csv = CSV.parse(csv_text, :headers => true)
	csv.each do |row|
		Venue.create!(row.to_hash)
	end
  end
  
  task :create_teams => :environment do
    csv_text = File.read('Teams.csv')
	csv = CSV.parse(csv_text, :headers => true)
	csv.each do |row|
		Team.create!(row.to_hash)
	end
  end
end 
