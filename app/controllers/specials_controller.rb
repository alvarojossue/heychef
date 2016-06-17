class SpecialsController < ApplicationController
	before_action :authenticate_restaurant!
	def index
		@the_restaurant = current_restaurant
		@the_specials = @the_restaurant.specials
		render 'index'
	end

	def new
		@the_restaurant = current_restaurant
		@the_special = @the_restaurant.specials.new
		render 'new'
	end

	def show
		@the_restaurant = current_restaurant
		@the_special = @the_restaurant.specials.find(params[:id])
		render 'show'
	end

	def create
		@the_restaurant = current_restaurant
		@the_special = @the_restaurant.specials.new(specials_params)
		if @the_special.save
			redirect_to '/specials'
		else
			render 'new'
		end
	end

	private

	def specials_params
		params.require(:special).permit(:name, :description, :price)
	end
end
