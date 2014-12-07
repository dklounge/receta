class RecipesController < ApplicationController
  def index
  	@recipes = if params[:keywords]
  		Recipe.where('name ilike ?', "%#{params[:keywords]}%")
  	end
  end
end
