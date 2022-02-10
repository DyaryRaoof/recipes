class RecipesController < ApplicationController
  def index
    @recipe = Recipe.includes(:user).where('user_id=? OR public=?', current_user.id, true)
  end

  def show
    @recipe = Recipe.find(params[:id])
    @foods = Food.all
    @foods.each do |food|
      @recipe_food = RecipeFood.find(food.id)
    end
  end

  def shopping_list
    @ids = RecipeFood.all.map(&:food_id)
    @foods = Food.where(id: @ids)
    @sum = 0
    @foods.each do |food|
      @recipe_food = RecipeFood.find_by(food_id: food.id)
      @sum += @recipe_food.quantity * food.price
    end
  end

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
    @public_recipes = Recipe.includes(:user, recipe_foods: :food).where(public: true)
  end
end
