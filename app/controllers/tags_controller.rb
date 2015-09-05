class TagsController < ApplicationController
<<<<<<< HEAD
	before_filter :require_login, only: [:destroy]
=======
>>>>>>> addDevise
	def show
		@tag = Tag.find(params[:id])
	end
end
