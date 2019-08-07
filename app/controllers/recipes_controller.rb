class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render :index
  end

  def new
    render :new
  end

  def create
    title = params[:title]
    recipe = Recipe.create!(:title => title)
    if recipe.save
      redirect_to '/recipes'
    else
      render :new
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    render :show
  end

end
