class RecipesController < ApplicationController
  def new
    @resipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user_id = current_user.id
    @recipe.save
    redirect_to book_path(@recipe)
  end

  def index
    @recipes = Recipe.all
  end

  def show
  end

  def edit
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :body, :ingredient, :memo)
  end
end
