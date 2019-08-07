class IngredientsController < ApplicationController

  def new
    @recipe = Recipe.find(params[:recipe_id])
    render :new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.new(:name => params[:name])
    @ingredient.save

    # ok now go and make it happen
    if @recipe.ingredients << @ingredient
      redirect_to recipe_path(@recipe)
    else
      render :new
    end
  end

  def index

  end
end
