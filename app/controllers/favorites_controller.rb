class FavoritesController < ApplicationController
	before_filter :authenticate_user!
	def index
		@recetas = current_user.favorite_recetas
	end
end
