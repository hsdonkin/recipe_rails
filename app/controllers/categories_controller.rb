class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    render :index
  end

  def new
    @category = Category.new()
    render :new
  end

  def create
    @category = Category.new(category_params)
    @category.save
    redirect_to categories_path
  end

  def category_params
    # this parses the special form_for(@object) helper because something something idk
    params.require(:category).permit(:name)
  end

  def show
    @category = Category.find(params[:id])
    @recipes = Recipe.all
    render :show
  end

end
