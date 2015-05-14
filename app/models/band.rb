class Band < ActiveRecord::Base
	has_many :abouts
	has_many :gigs
	has_many :stories
end
