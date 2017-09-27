class Lga < ApplicationRecord
	belongs_to :state
	has_many :restaurants

	require 'csv'

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
      	Lga.create!(row.to_hash)
    end # end CSV.foreach
  end # end self.import(file)
end
