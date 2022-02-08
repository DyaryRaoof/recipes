class RecipesController < ApplicationController
  def index
    @recipe = Recipe.all
    puts @recipe
  end

  def show; end

  def new
    @recipe = Recipe.new
    respond_to do |format|
      format.html { render :new, locals: { recipe: @recipe } }
    end
  end

  def create
    recipe = Recipe.new(params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public,
                                                       :user_id))
    respond_to do |format|
      if recipe.save
        format.html do
          flash[:success] = 'recipe saved successfully'
          redirect_to all_recipes_path
        end
      else
        flash.now[:error] = 'Error: recipe could not be saved'
        render :new, locals: { recipe: recipe }
      end
    end
  end

  def destroy
    Recipe.find(params[:id]).destroy
    redirect_to all_recipes_path(params[:user_id])
    flash[:alert] = 'Your recipe was successfully deleted!'
  end

  def public
    @public_recipes = Recipe.where(public: true)
  end
end
