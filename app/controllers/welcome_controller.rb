class WelcomeController < ApplicationController

	def index
		@recetas = Receta.order("created_at desc")		
	end
end
