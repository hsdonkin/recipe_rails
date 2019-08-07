class IngredientsController < ApplicationController

  def new
    @recipe = Recipe.find(params[:recipe_id])
    render :new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = @recipe.ingredients.new(:name => params[:name])
    @ingredient.save

    # ok now go and make it ahppen
    @recipe.ingredients << @ingredient
    render :new
  end

  def index

  end
end
