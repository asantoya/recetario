class RecetasController < ApplicationController
	def index
		@recetas = Receta.all
	end

	def new
		@receta = current_user.recetas.build
	end

	def create
    	@receta = current_user.recetas.build(params[:receta])
	    if @receta.save
	    	redirect_to user_receta_path(current_user, @receta), :flash => { :notice => "  receta creada!" }
	    else
	     	render :new
	    end
	end

	def show
      @user = User.find(params[:user_id])     
      @receta = @user.recetas.find(params[:id])   
    end

    def edit
    	@receta = current_user.recetas.find(params[:id])
    end

    def update
    	@receta = current_user.recetas.find(params[:id])
    	if @receta.update_attributes(params[:receta])
        	redirect_to user_path(current_user), :flash => { :notice => "  Receta actualizada!" }
      	else
        	render 'edit'
      	end    	
    end

    def destroy
    	@receta= current_user.recetas.find(params[:id])
    	@receta.destroy
    	redirect_to user_path(current_user), :flash => { :notice => "  Receta borrada satisfactoriamente" }
    end
end
