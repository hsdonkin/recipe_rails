class IngredientsController < ApplicationController

  def new
    @recipe = Recipe.find(params[:recipe_id])
    render :new
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @ingredient = Ingredient.new(:name => params[:name])
    @ingredient.save
    render :new
  end

  def index

  end 
end
