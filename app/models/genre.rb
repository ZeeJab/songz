class Genre < ActiveRecord::Base
	has_many :songs

	validates :name, :uniqueness => true
	validates :name, :presence => true
	validates :photo, :presence => true
  
end