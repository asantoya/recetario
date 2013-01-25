class UsersController < ApplicationController
 	before_filter :authenticate_user!
 	def show
 		@user = User.find(params[:id])
 		@recetas = @user.recetas.all
 	end
end
