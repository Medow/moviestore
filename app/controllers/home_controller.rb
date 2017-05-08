class HomeController < ApplicationController
  caches_page :index if Rails.env.production?
	
	def index
		@featured_movies_1 = Movie.large_cover_image.limit(10)
		@featured_movies_2 = Movie.large_cover_image.where.not(id: @featured_movies_1.pluck(:id)).limit(20)
		@featured_movies_3 = Movie.large_cover_image.where.not(id: @featured_movies_1.pluck(:id)).where.not(id: @featured_movies_2.pluck(:id)).where.not(youtube: nil).limit(20)
		@featured_movies_4 = Movie.large_cover_image.where.not(id: @featured_movies_1.pluck(:id)).where.not(id: @featured_movies_2.pluck(:id)).where.not(id: @featured_movies_3.pluck(:id)).limit(10)
	end
end
