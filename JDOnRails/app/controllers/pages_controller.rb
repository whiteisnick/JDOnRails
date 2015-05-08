class PagesController < ApplicationController

	def home
		@bands = Band.all
		@band = Band.find(params[b1])
		@abouts = @band.abouts
		@stories = @band.stories
		@gigs = @bands.gigs
	end
	def archives; end
	def jdandscott
		@band = Band.find(params[b2])
		@abouts = @band.abouts
		@stories = @band.stories
		@gigs = @bands.gigs
	end
	def debris
		@band = Band.find(params[b3])
		@abouts = @band.abouts
		@stories = @band.stories
		@gigs = @bands.gigs
	end

end
