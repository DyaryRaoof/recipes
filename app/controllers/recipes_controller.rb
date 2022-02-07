class RecipesController < ApplicationController
  def index
    @recipe = Recipe.all
    puts @recipe
  end

  def show; end

  def destroy
    Recipe.find(params[:id]).destroy
    redirect_to all_recipes_path(params[:user_id])
    flash[:alert] = 'Your recipe was successfully deleted!'
  end
end
