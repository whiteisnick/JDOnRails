class PagesController < ApplicationController

	def home
		@bands = Band.all
		@band = Band.find(1)
		@abouts = @band.abouts
		@stories = @band.stories
		@gigs = Gig.all
	end
	def archives; end
	def jdandscott
		@band = Band.find(2)
		@abouts = @band.abouts
		@stories = @band.stories
		@gigs = @band.gigs
	end
	def debris
		@band = Band.find(3)
		@abouts = @band.abouts
		@stories = @band.stories
		@gigs = @band.gigs
	end

end
