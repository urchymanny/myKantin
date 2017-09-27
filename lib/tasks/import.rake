require 'csv'
desc "Imports a CSV file into an ActiveRecord table"
task :import, [:filename] => :environment do    
    CSV.foreach('lga.csv', :headers => true) do |row|
      Lga.create!(row.to_hash)
    end
end