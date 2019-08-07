class IngredientsController < ApplicationController

  def new
    @recipe = Recipe.find(params[:recipe_id])
    render :new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    if Ingredient.find_by_name(params[:name])
      @ingredient = Ingredient.find_by_name(params[:name])
    else
      @ingredient = @recipe.ingredients.new(:name => params[:name])
      @ingredient.save
      @recipe.ingredients << @ingredient
    end
      redirect_to recipe_path(@recipe)

  end

  def index

  end
end
